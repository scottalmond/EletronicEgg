/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_init.h"
#include <peripheral_clk_config.h>
#include <utils.h>
#include <hal_init.h>

void delay_driver_init(void)
{
	delay_init(SysTick);
}

void system_init(void)
{
	init_mcu();

	// GPIO on PA31

	gpio_set_pin_level(PB31,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PB31, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PB31, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PB22

	gpio_set_pin_level(PB22,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PB22, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PB22, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PB23

	gpio_set_pin_level(PB23,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PB23, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PB23, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PB30

	gpio_set_pin_level(PB30,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PB30, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PB30, GPIO_PIN_FUNCTION_OFF);

	delay_driver_init();
	
	while(true)
	{
		for(int is_lit=0;is_lit<2;is_lit++)
		{
			for(int led_iter=0;led_iter<4;led_iter++)
			{
				gpio_set_pin_level(PB30,false);
				gpio_set_pin_level(PB31,false);
				gpio_set_pin_level(PB22,false);
				gpio_set_pin_level(PB23,false);
				switch(led_iter)
				{
					case 0: gpio_set_pin_level(PB22,is_lit>0); break;
					case 1: gpio_set_pin_level(PB23,is_lit>0); break;
					case 2: gpio_set_pin_level(PB30,is_lit>0); break;
					case 3: gpio_set_pin_level(PB31,is_lit>0); break;
					default: break;
				}
				delay_ms(1000);
			}
		}
	}
}
