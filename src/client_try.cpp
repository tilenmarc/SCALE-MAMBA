#include <System/Networking.h>
#include <cstring>
#include <sys/socket.h>
#include <stdio.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string.h>

int main(int argc, const char *argv[]) {
  char *hello = "Hello from client";
  int sock = OpenConnection("127.0.0.1", 5009);
  send(sock , hello , strlen(hello) , 0 );
  printf("Hello message sent\n");
  char buffer[1024] = {0};
  int valread = read( sock , buffer, 1024);
  printf("%s\n",buffer );
  printf("finished\n");
  return 0;
}