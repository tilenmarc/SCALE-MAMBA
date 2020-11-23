/*
Copyright (c) 2017, The University of Bristol, Senate House, Tyndall Avenue, Bristol, BS8 1TH, United Kingdom.
Copyright (c) 2020, COSIC-KU Leuven, Kasteelpark Arenberg 10, bus 2452, B-3001 Leuven-Heverlee, Belgium.

All rights reserved
*/

#include "Input_Output_Simple.h"
#include "Exceptions/Exceptions.h"
#include "System/Networking.h"
#include <cstring>
#include <sys/socket.h>
#include <unistd.h>

long Input_Output_Simple::open_channel(unsigned int channel)
{
  go_soc = Get_Go_Connection((int)channel);
  cout << "Opening channel " << channel << endl;
  return 0;
}

void Input_Output_Simple::close_channel(unsigned int channel)
{
  cout << "Closing channel " << channel << endl;
}

gfp Input_Output_Simple::private_input_gfp(unsigned int channel, unsigned int whoimi)
{
  string line;

//  printf("input %d:\n", counter1);

  if (counter1 == 0) {
//      printf("input:\n");

      ifstream myfile;
      string name;
      name = "Input/data" + std::to_string(whoimi) + ".txt";

      int size_of_vector = 0;
      myfile.open(name);
      while (std::getline(myfile, line)) {
          size_of_vector++;
        }
      myfile.close();
//      printf("number of inputs %d \n", size_of_vector);

      input_vector = (unsigned long *)malloc(sizeof(unsigned long) * (size_of_vector + 1));
      myfile.open(name);
      for (int i = 0; i < size_of_vector; i++) {
          getline (myfile, line);
          input_vector[i] = std::stoul(line);
        }
      input_vector[size_of_vector] = (unsigned long)NULL;
      myfile.close();
  }


//  printf("%d\n", input_vector[counter1]);

  gfp y;
  y.assign(input_vector[counter1]);
  counter1++;
//  printf("done\n");
  return y;
}

void Input_Output_Simple::private_output_gfp(const gfp &output, unsigned int channel)
{
  ofstream result, finish;

  result.open ("Input/result.txt");
  output.output(result, true);
  result << "\n";
  result.close();

  finish.open ("Input/finish.txt");
  finish << "true\n";
  finish.close();
}

gfp Input_Output_Simple::public_input_gfp(unsigned int channel)
{
  cout << "Enter value on channel " << channel << " : ";
  word x;
  cin >> x;
  gfp y;
  y.assign(x);

  // Important to have this call in each version of public_input_gfp
  Update_Checker(y, channel);

  return y;
}

void Input_Output_Simple::public_output_gfp(const gfp &output, unsigned int channel)
{
  cout << "Output channel " << channel << " : ";
  output.output(cout, true);
  cout << endl;
}

long Input_Output_Simple::public_input_int(unsigned int channel)
{
  cout << "Enter value on channel " << channel << " : ";
  long x;
  cin >> x;

  // Important to have this call in each version of public_input_gfp
  Update_Checker(x, channel);

  return x;
}

void Input_Output_Simple::public_output_int(const long output, unsigned int channel)
{
  cout << "Output channel " << channel << " : " << output;
  cout << " = 0x" << hex << output << dec << endl;
}

void Input_Output_Simple::output_share(const Share &S, unsigned int channel, unsigned int whoimi)
{
  string line;
  if (counter2 == 0)
    {
      output_shares_file.open("Input/output_shares" + std::to_string(whoimi) + ".txt");
    }

  S.output(output_shares_file, true);

  counter2++;
}

Share Input_Output_Simple::input_share(unsigned int channel, unsigned int whoimi)
{
  Share S;

  string line;
  if (counter3 == 0) {
      ifstream myfile;
      string name;
      name = "Input/data" + std::to_string(whoimi) + ".txt";

      int size_of_vector = 0;
      myfile.open(name);
      while (std::getline(myfile, line)) {
          size_of_vector++;
        }
      myfile.close();

//      printf("len %d\n", size_of_vector);


      myfile.open(name);
      for (int i = 0; i < size_of_vector; i++) {
//            printf("here iter: %d whomi %d\n", i, whoimi);

          Share ss;
          ss.input(myfile, true);
          shares_vector.push_back(ss);

//          ss.output(cout, true);
        }
      myfile.close();
    }

  Share ret = shares_vector[counter3];
  counter3++;

  return ret;
}

void Input_Output_Simple::trigger(Schedule &schedule, int whoimi)
{

  // reset the values
  counter1 = 0;
  counter2 = 0;
  counter3 = 0;
  output_shares_file.close();
  free(input_vector);
  shares_vector.clear();

  // if I got to here, it means that computations have finished
  // send finished msg
  char finished_msg[] = "fin";
  send(go_soc , finished_msg , strlen(finished_msg) , 0 );

  // wait for a new request
  while (true) {
    char buffer[1024] = {0};
    read(go_soc, buffer, 1024);

    if (buffer[0] == '1') {
        printf("received restart request: %s\n", buffer);
        char restart_msg[] = "restart";
        send(go_soc , restart_msg , strlen(restart_msg) , 0 );
        break;
    }
    printf("received strange message, no restart: %s\n", buffer);
    sleep(1);
  }

  // Load new schedule file program streams, using the original
  // program name
  unsigned int nthreads= schedule.Load_Programs();
  if (schedule.max_n_threads() < nthreads)
    {
      throw Processor_Error("Restart requires more threads, cannot do this");
    }
}

void Input_Output_Simple::debug_output(const stringstream &ss)
{
  printf("%s", ss.str().c_str());
  fflush(stdout);
}

void Input_Output_Simple::crash(unsigned int PC, unsigned int thread_num)
{
  printf("Crashing in thread %d at PC value %d\n", thread_num, PC);
  throw crash_requested();
}
