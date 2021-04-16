/*
 * gui.c
 *
 * Created: 2/22/2020 8:04:35 PM
  */ 

//dump the full help screen to the terminal
/*void print_home()
{
	
}*/

#include "asf.h"
#include "stdio_serial.h"
#include "conf_uart_serial.h"
#include "string.h"

void debug_loop(void)
{
	/*gpio_set_pin_level(PB06,false);

	// Set pin direction to output
	gpio_set_pin_direction(PB06, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PB06, GPIO_PIN_FUNCTION_OFF);
	while(true)
	{
		gpio_set_pin_level(PB06,false);
		delay_ms(1000);
		gpio_set_pin_level(PB06,true);
		delay_ms(1000);
	}*/
	port_pin_set_output_level(LED0_PIN, LED0_ACTIVE);
	delay_ms(1000);
	port_pin_set_output_level(LED0_PIN, LED0_INACTIVE);
	delay_ms(1000);
	//list available sercom
	/*const int buff_length=64;
	char buff[buff_length];
	sprintf(buff,"Buffer length: %s%i\r\n","x",buff_length-1);
	printf(buff);
	printf("DONE\r\n");*/
}

//read: returns payload, -1 on error
//write: returns 0 on success, -1 on error
int i2c_command_custom(bool is_write,int i2c_device_address,int i2c_message_address,int i2c_message_payload)
{
	//ref API for i2c
	return 65;
}

//returns payload, -1 on error
int i2c_read(int i2c_device_address,int i2c_message_address)
{ return i2c_command_custom(false,i2c_device_address,i2c_message_address,-1); }

//specify number of bytes to write...?
int i2c_write(int i2c_device_address,int i2c_message_address,int i2c_message_payload)
{ return i2c_command_custom(true,i2c_device_address,i2c_message_address,i2c_message_payload); }

void print_home(void)
{
	printf("-- Help Menu --\r\n");
	printf("Note: Terminate user commands with new line character\r\n");
	printf("h - Print this menu\r\n");
	printf("a - Information about this device\r\n");
	//what is this device, where more info can be found
	printf("i - I2C command\r\n");
	printf("q - Return to main menu at any time\r\n");
	printf("\r\n");
}

void print_about(void)
{
	printf("-- About --\r\n");
	printf("Project: \r\n");
	printf("Version: 1.0.0\r\n");
	printf("Author: \r\n");
	printf("Date: \r\n");
	printf("More Info: \r\n");
	printf("Hardware\r\n");
	printf("  Microprocessor: SAML21J18B\r\n");
	printf("  PMIC/LDO: BQ25155\r\n");
	printf("  Accelerometer: H3LIS200DLTR\r\n");
	printf("  Screen: VI-321-DP-RC-S\r\n");
	printf("  Battery: 502535 400mAh (Sparkfun/13851)\r\n");
	printf("\r\n");
}

//return true if user input is 'q', otherwise dump response into the 'response' character array
//will only extract <response_length> characters from the terminal buffer
bool prompt_response(char* prompt,char* response,int response_length)
{
	char temp[8];
	printf(prompt);
	sprintf(temp,"%%%is",response_length-1); // parameterized "%63s"
	scanf(temp,response);
	printf("%s\r\n",response);
	return response[0]=='q' || response[0]=='\0';
}

//prompt the user for action to perform through terminal
//use one-letter commands for simplicity
void prompt_menu(void)
{
	//todo: timeout?
	const int buff_length=64;
	char buff[buff_length];
	bool is_error=false;
	do{
		if(prompt_response("Main menu >> user input [h/q]: ",buff,buff_length)) return;
		switch(buff[0])
		{
			case 'h': print_home(); break;
			case 'a': print_about(); break;
			case 'i':
			{
				bool is_write=false;
				bool is_read=false;
				do{
					if(prompt_response("I2C >> Is read or write? [r/w/q]: ",buff,buff_length)) break;
					is_write=buff[0]=='w';
					is_read=buff[0]=='r';
					unsigned char write_str[]="write";
					if(is_read) strncpy(write_str, "read", sizeof(write_str));
					if(is_write||is_read)
					{//use is_write/!is_write exclusively henceforth
						int i2c_device_address=-1;
						//printf("%s\r\n",write_str); //debug delete me
						do{
							char prompt_str[64];
							snprintf(prompt_str,sizeof(prompt_str),"%s%s%s","I2C(",
								write_str,") >> I2C device address? 0x");
							if(prompt_response(prompt_str,buff,buff_length)) break;
							//printf("Debug hex: %s\r\n",buff); //debug delete me
							sscanf(buff,"%x",&i2c_device_address);
							//printf("Debug dec: %d\r\n",i2c_address); //debug delete me
							if(i2c_device_address>=128) i2c_device_address=-1;//address too big
							if(i2c_device_address>=0)
							{
								int i2c_message_address=-1;
								do{
									snprintf(prompt_str,sizeof(prompt_str),"%s%s%s%02x%s","I2C(",
										write_str,", 0x",i2c_device_address,") >> I2C message address? 0x");
									if(prompt_response(prompt_str,buff,buff_length)) break;
									//printf("Debug hex: %s\r\n",buff); //debug delete me
									sscanf(buff,"%x",&i2c_message_address);
									if(i2c_message_address>=256) i2c_message_address=-1;
									//printf("Debug dec: %d\r\n",i2c_message_address); //debug delete me
									if(i2c_message_address>=0)
									{
										if(!is_write)
										{
											int i2c_read_response=i2c_read(i2c_device_address,i2c_message_address);
											printf("%s%s%s%02x%s%02x%s%02x","I2C(",
												write_str,", 0x",i2c_device_address,
												", 0x",i2c_message_address,") >> I2C read response: 0x",i2c_read_response);
											break;
										}
										int i2c_message_payload=-1;
										do{
											snprintf(prompt_str,sizeof(prompt_str),"%s%s%s%02x%s%02x%s","I2C(",
											write_str,", 0x",i2c_device_address,", 0x",i2c_message_address,
												") >> I2C message payload? 0x");
											if(prompt_response(prompt_str,buff,buff_length)) break;
											//printf("Debug hex: %s\r\n",buff); //debug delete me
											sscanf(buff,"%x",&i2c_message_payload);
											if(i2c_message_payload>=256) i2c_message_payload=-1;
											if(i2c_message_payload>=0)
											{
												int i2c_write_response=i2c_write(i2c_device_address,i2c_message_address,i2c_message_payload);
												printf("%s%s%s%02x%s%02x%s%02x%s","I2C(",
												write_str,", 0x",i2c_device_address,
												", 0x",i2c_message_address,
												", 0x",i2c_message_payload,") >> I2C write execution status: 0x",i2c_write_response);
												break;
											}else printf("Invalid user input\r\n");
										}while(i2c_message_payload<0);
									}else printf("Invalid user input\r\n");
								}while(i2c_message_address<0);
							}else printf("Invalid user input\r\n");
						}while(i2c_device_address<0);
					}else printf("Invalid user input\r\n");
				}while(!is_write&&!is_read);
			} break;
			default:
				is_error=true;
			break;
		}
		if(is_error) printf("Invalid user input\r\n");
	}while(is_error);
}
