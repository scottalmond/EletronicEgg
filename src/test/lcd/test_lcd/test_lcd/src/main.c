/**
 * \file
 *
 * \brief Empty user application template
 *
 */

/**
 * \mainpage User Application template doxygen documentation
 *
 * \par Empty user application template
 *
 * This is a bare minimum user application template.
 *
 * For documentation of the board, go \ref group_common_boards "here" for a link
 * to the board-specific documentation.
 *
 * \par Content
 *
 * -# Include the ASF header files (through asf.h)
 * -# Minimal main function that starts with a call to system_init()
 * -# Basic usage of on-board LED and button
 * -# "Insert application code here" comment
 *
 */

/*
 * Include header files for all drivers that have been imported from
 * Atmel Software Framework (ASF).
 */
/*
 * Support and FAQ: visit <a href="https://www.microchip.com/support/">Microchip Support</a>
 */

#include <asf.h>

/*#include "driver_init.h"
#include <peripheral_clk_config.h>
#include <utils.h>
#include <hal_init.h>
#include <hpl_gclk_base.h>
#include <hpl_pm_base.h>
#include <hal_delay.h>*/

//#include <util/delay.h>

//void digitalWrite(int pin_id,bool is_ON);

//#define F_CPU 4000000UL

void setOutput(int pin_id);
void digitalWrite(int pin_id,bool is_HIGH,bool is_high_impedance);

const int PIN_COUNT=24;
const int PIN_LIST[]={EXT1_PIN_3,EXT1_PIN_5,EXT1_PIN_7,EXT1_PIN_9,EXT1_PIN_4,EXT1_PIN_13,EXT1_PIN_15,EXT1_PIN_17,EXT1_PIN_18,EXT1_PIN_16,EXT1_PIN_14,EXT1_PIN_12,
                      EXT2_PIN_3,EXT2_PIN_5,EXT2_PIN_7,EXT2_PIN_9,EXT2_PIN_4,EXT2_PIN_13,EXT2_PIN_15,EXT2_PIN_17,EXT2_PIN_18,EXT2_PIN_16,EXT2_PIN_14,EXT2_PIN_10
                      };

int COM_INDEX=0;
//int COM_INDEX2=11;

long drive_val=0;

int main (void)
{
	system_init();
	delay_init();

	/* Insert application code here, after the board has been initialized. */

	int delay_period_ms=500;
	
	for(int iter=0;iter<PIN_COUNT;iter++) setOutput(PIN_LIST[iter]);

	while(1){

		drive_val+=1;
		int temp=drive_val;

		//for(int iter=0;iter<PIN_COUNT;iter++)
		/*for(int iter=(PIN_COUNT-1);iter>=0;iter--)
		{
			digitalWrite(PIN_LIST[iter],temp%3==0,temp%3==2);
			temp/=3;
		}
		delay_ms(delay_period_ms);*/
		/*temp=drive_val;
		for(int iter=0;iter<PIN_COUNT;iter++){
			digitalWrite(PIN_LIST[iter],false,true);
			temp/=3;
		}
		delay_ms(delay_period_ms);*/

		for(int iter=0;iter<PIN_COUNT;iter++) digitalWrite(PIN_LIST[iter],true,false);
		digitalWrite(PIN_LIST[COM_INDEX],false,false);
		//digitalWrite(PIN_LIST[COM_INDEX2],false,false);
		delay_ms(delay_period_ms);
		for(int iter=0;iter<PIN_COUNT;iter++) digitalWrite(PIN_LIST[iter],false,false);
		digitalWrite(PIN_LIST[COM_INDEX],true,false);
		//digitalWrite(PIN_LIST[COM_INDEX2],true,false);
		delay_ms(delay_period_ms);
		COM_INDEX+=1;
		COM_INDEX%=PIN_COUNT;
		//COM_INDEX2+=1;
		//COM_INDEX2%=PIN_COUNT;

		/*for(int iter=0;iter<PIN_COUNT;iter++) digitalWrite(PIN_LIST[iter],true,false);
		digitalWrite(PIN_LIST[COM_INDEX],false,false);
		digitalWrite(PIN_LIST[COM_INDEX2],false,false);
		delay_ms(delay_period_ms);
		for(int iter=0;iter<PIN_COUNT;iter++) digitalWrite(PIN_LIST[iter],false,true);
		digitalWrite(PIN_LIST[COM_INDEX],true,false);
		digitalWrite(PIN_LIST[COM_INDEX2],true,false);
		delay_ms(delay_period_ms);
		COM_INDEX+=1;
		COM_INDEX%=PIN_COUNT;
		COM_INDEX2+=1;
		COM_INDEX2%=PIN_COUNT;*/

		/*port_pin_set_output_level(LED_0_PIN, LED_0_ACTIVE);
		digitalWrite(PIN_PB00,true);
		delay_ms(delay_period_ms);
		port_pin_set_output_level(LED_0_PIN, !LED_0_ACTIVE);
		digitalWrite(PIN_PB00,false);
		delay_ms(delay_period_ms);*/
	}

	/* This skeleton code simply sets the LED to the state of the button. */
	//while (1) {
	//	/* Is button pressed? */
	//	if (port_pin_get_input_level(BUTTON_0_PIN) == BUTTON_0_ACTIVE) {
	//		/* Yes, so turn LED on. */
	//		port_pin_set_output_level(LED_0_PIN, LED_0_ACTIVE);
	//	} else {
	//		/* No, so turn LED off. */
	//		port_pin_set_output_level(LED_0_PIN, !LED_0_ACTIVE);
	//	}
	//}
}

/*void writeText(char* arr)
{
	
}

void writeChar(char letter,bool is_decimal,int position)
{
	
}

short isON(char letter)
{
	if(letter=='8') return bool[]{1,1,1,1,1,1,1,0};
	if(letter=='1') return bool[]{1,1,1,1,1,1,1,0};
	return bool[]{0,0,0,0,0,0,0};
}*/

void setOutput(int pin_id){
	struct port_config pin_conf;
	port_get_config_defaults(&pin_conf);
	pin_conf.direction  = PORT_PIN_DIR_OUTPUT;
	port_pin_set_config(pin_id, &pin_conf);
	//port_pin_set_output_level(pin_id, 0);
}

void digitalWrite(int pin_id,bool is_HIGH,bool is_high_impedance)
{
	if(is_high_impedance)
	{
		struct port_config pin_conf;
		port_get_config_defaults(&pin_conf);
		pin_conf.direction  = PORT_PIN_DIR_INPUT;
		port_pin_set_config(pin_id, &pin_conf);
	}else{
		setOutput(pin_id);
		port_pin_set_output_level(pin_id, is_HIGH);
	}
}

/*void digitalWrite(int pin_id,bool is_ON){
	port_pin_set_output_level(pin_id,is_ON);
}*/
