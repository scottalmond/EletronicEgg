/*
 * CFile1.c
 *
 * Created: 2/22/2020 9:09:04 PM
  */ 

void debug_loop(void);
void print_home(void);
void print_about(void);
void prompt_menu(void);
bool prompt_response(char*,char*,int);
int i2c_read(int,int);
int i2c_write(int,int,int);
int i2c_command_custom(bool,int,int,int);