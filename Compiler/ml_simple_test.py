import math
import numpy as np
def sigmoid(x):
    return 1/(1 + np.exp(-x))

def sigmoid_prime(x):
    sx = sigmoid(x)
    return np.multiply(sx, (1 - sx))

def relu(x):
    return np.maximum(x, 0)

def relu_prime(x):
    return x >= 0

class NeuralNetwork:
    def __init__(self, in_dim, hid_dim, out_dim):
        # np.random.seed(10) # for generating the same results
        # self.W1 = np.random.rand(hid_dim, in_dim)
        self.W1 = np.eye(hid_dim, in_dim)
        # self.W2 = np.random.rand(out_dim, hid_dim)
        self.W2 = np.eye(out_dim, hid_dim)
        self.x = None
        self.W1x = None
        self.x_1 = None
        self.W2x_1 = None
        self.x_2 = None

    def forward(self, x):
        # print(x)
        self.x = x
        # print(self.W1.shape, x.shape)
        self.W1x = np.dot(self.W1, x)
        # print(self.W1x)
        # self.x_1 = relu(self.W1x)
        self.x_1 = sigmoid(self.W1x)
        # print(self.x_1)
        self.W2x_1 = np.matmul(self.W2, self.x_1)
        # print(self.W2x_1)

        self.x_2 = sigmoid(self.W2x_1)
        # print(self.x_2)

        return self.x_2

    def loss(self, X, Y):
        lse = 0
        for j in range(len(X)):
            x = X[j]
            y = Y[j]
            self.forward(x)

            lse += np.linalg.norm(y - self.x_2)**2
        return lse

    def gradient_descent(self, X, Y, iterations):
        for i in range(iterations):
            loss = self.loss(X, Y)
            print("loss", i, loss)
            G2 = np.zeros(self.W2.shape)
            G1 = np.zeros(self.W1.shape)

            for j in range(len(X)):
                x = X[j]
                y = Y[j]
                self.forward(x)

                # gradients for hidden to output weights
                # print((y - self.x_2).shape, sigmoid_prime(self.W2x_1).shape)
                mu2 = np.multiply((y - self.x_2), sigmoid_prime(self.W2x_1))
                g2 = np.matmul(mu2, np.transpose(self.x_1))
                # print("w1x", self.W1x)

                # mu1a = relu_prime(self.W1x)
                mu1a = sigmoid_prime(self.W1x)
                # print("mu1a", mu1a)

                mu1b = np.dot(np.transpose(self.W2), mu2)
                # print("mu1b", mu1b)

                mu1 = np.multiply(mu1a, mu1b)
                # print("mu1", mu1)

                g1 = np.dot(mu1, np.transpose(self.x))

                # print("g2", g2)
                # print("g1", g1)

                G1 += g1
                G2 += g2

            self.W2 = self.W2 + G2 #/ len(X)
            self.W1 = self.W1 + G1 #/ len(X)

# small example

# x = np.random.rand(10, 2, 1)
# x = [np.random.rand(2, 1) for _ in range(10)]
x = [np.matrix([[1],[0]]), np.matrix([[0.5],[-0.3]])]
print(x)

nn = NeuralNetwork(2, 4, 2)
y_hat = nn.forward(x[0])
print("before", y_hat)
y_hat = nn.forward(x[1])
print("before", y_hat)

# y = [np.random.rand(2, 1) for _ in range(10)]
y = [np.matrix([[1], [0]]), np.matrix([[0], [1]])]
# print(y)
nn.gradient_descent(x, y, 10)
y_hat = nn.forward(x[0])
print("after", y_hat)
y_hat = nn.forward(x[1])
print("after", y_hat)

# framingam example


















#     def gradient_descent(self, x, y, iterations):
#         for i in range(iterations):
#             Xi = x
#             Xj = self.sigmoid(Xi, self.wij)
#             yhat = self.sigmoid(Xj, self.wjk)
#             # gradients for hidden to output weights
#             g_wjk = np.dot(Xj.T, (y - yhat) * self.sigmoid_derivative(Xj, self.wjk))
#             # gradients for input to hidden weights
#             g_wij = np.dot(Xi.T, np.dot((y - yhat) * self.sigmoid_derivative(Xj, self.wjk), self.wjk.T) * self.sigmoid_derivative(Xi, self.wij))
#             # update weights
#             self.wij += g_wij
#             self.wjk += g_wjk
#         print('The final prediction from neural network are: ')
#         print(yhat)
#
# if __name__ == '__main__':
# neural_network = NeuralNetwork()
# print('Random starting input to hidden weights: ')
# print(neural_network.wij)
# print('Random starting hidden to output weights: ')
# print(neural_network.wjk)
# X = np.array([[0, 0, 1], [1, 1, 1], [1, 0, 1], [0, 1, 1]])
# y = np.array([[0, 1, 1, 0]]).T
# neural_network.gradient_descent(X, y, 10000)



