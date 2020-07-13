
#include <unistd.h>
#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>
#include <System/Networking.h>

int main(int argc, const char *argv[]) {
  int server_fd, new_socket, valread;
  struct sockaddr_in address;
  int opt = 1;
  int addrlen = sizeof(address);
  char buffer[1024] = {0};
  char *hello = "Hello from server";

  server_fd = OpenListener(5009, 1);
  printf("finished\n");
  address.sin_family = AF_INET;
  address.sin_addr.s_addr = INADDR_ANY;
  address.sin_port = htons( 5009 );

  if ((new_socket = accept(server_fd, (struct sockaddr *)&address,
                           (socklen_t*)&addrlen))<0)
    {
      perror("accept");
      exit(EXIT_FAILURE);
    }
  valread = read( new_socket , buffer, 1024);
  printf("%s\n",buffer );
  send(new_socket , hello , strlen(hello) , 0 );
  printf("Hello message sent\n");
  return 0;
//  return 0;
}