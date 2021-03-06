/*
Copyright (c) 2017, The University of Bristol, Senate House, Tyndall Avenue, Bristol, BS8 1TH, United Kingdom.
Copyright (c) 2020, COSIC-KU Leuven, Kasteelpark Arenberg 10, bus 2452, B-3001 Leuven-Heverlee, Belgium.

All rights reserved
*/
#ifndef _InputOutputSimple
#define _InputOutputSimple

/* A simple IO class which just uses standard
 * input/output to communicate values
 *
 * Whereas share values are input/output using
 * a steam, with either human or non-human form
 */

#include "Input_Output_Base.h"

#include <fstream>
using namespace std;

class Input_Output_Simple : public Input_Output_Base
{
  istream *inpf;
  ostream *outf;
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  ofstream output_shares_file;
  unsigned long *input_vector;
  vector<Share> shares_vector;
  int go_soc;
  bool human; // Only affects share output

public:
  Input_Output_Simple()
      : Input_Output_Base()
  {
    ;
  }

  void init(istream &ifs, ostream &ofs, bool human_type)
  {
    inpf= &ifs;
    outf= &ofs;
    human= human_type;
  }

  virtual long open_channel(unsigned int channel);
  virtual void close_channel(unsigned int channel);

  virtual gfp private_input_gfp(unsigned int channel, unsigned int whoimi);
  virtual void private_output_gfp(const gfp &output, unsigned int channel);

  virtual void public_output_gfp(const gfp &output, unsigned int channel);
  virtual gfp public_input_gfp(unsigned int channel);

  virtual void public_output_int(const long output, unsigned int channel);
  virtual long public_input_int(unsigned int channel);

  virtual void output_share(const Share &S, unsigned int channel, unsigned int whoimi);
  virtual Share input_share(unsigned int channel, unsigned int whoimi);

  virtual void trigger(Schedule &schedule, int whoami);

  virtual void debug_output(const stringstream &ss);

  virtual void crash(unsigned int PC, unsigned int thread_num);
};

#endif
