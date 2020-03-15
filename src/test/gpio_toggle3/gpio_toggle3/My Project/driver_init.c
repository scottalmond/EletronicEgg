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

	// GPIO on PB22

	gpio_set_pin_direction(PB22,
	                       // <y> Pin direction
	                       // <id> pad_direction
	                       // <GPIO_DIRECTION_OFF"> Off
	                       // <GPIO_DIRECTION_IN"> In
	                       // <GPIO_DIRECTION_OUT"> Out
	                       GPIO_DIRECTION_OUT);

	gpio_set_pin_level(PB22,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   true);

	gpio_set_pin_pull_mode(PB22,
						// <y> Pull configuration
						// <id> pad_pull_config
						GPIO_PULL_OFF // Off
						// <GPIO_PULL_UP"> Pull-up
						// <GPIO_PULL_DOWN"> Pull-down
						/*GPIO_PULL_UP*/);

	gpio_set_pin_function(PB22,
	                      // <y> Pin function
	                      // <id> pad_function
	                      // <i> Auto : use driver pinmux if signal is imported by driver, else turn off function
	                      // <GPIO_PIN_FUNCTION_OFF"> Auto
	                      // <GPIO_PIN_FUNCTION_OFF"> Off
	                      // <GPIO_PIN_FUNCTION_A"> A
	                      // <GPIO_PIN_FUNCTION_B"> B
	                      // <GPIO_PIN_FUNCTION_C"> C
	                      // <GPIO_PIN_FUNCTION_D"> D
	                      // <GPIO_PIN_FUNCTION_E"> E
	                      // <GPIO_PIN_FUNCTION_F"> F
	                      // <GPIO_PIN_FUNCTION_G"> G
	                      // <GPIO_PIN_FUNCTION_H"> H
	                      // <GPIO_PIN_FUNCTION_I"> I
	                      GPIO_PIN_FUNCTION_OFF);

	// GPIO on PB23

	gpio_set_pin_direction(PB23,
	                       // <y> Pin direction
	                       // <id> pad_direction
	                       // <GPIO_DIRECTION_OFF"> Off
	                       // <GPIO_DIRECTION_IN"> In
	                       // <GPIO_DIRECTION_OUT"> Out
	                       GPIO_DIRECTION_OUT);

	gpio_set_pin_level(PB23,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   true);


	gpio_set_pin_pull_mode(PB23,
						// <y> Pull configuration
						// <id> pad_pull_config
						GPIO_PULL_OFF // Off
						// <GPIO_PULL_UP"> Pull-up
						// <GPIO_PULL_DOWN"> Pull-down
						/*GPIO_PULL_UP*/);

	gpio_set_pin_function(PB23,
	                      // <y> Pin function
	                      // <id> pad_function
	                      // <i> Auto : use driver pinmux if signal is imported by driver, else turn off function
	                      // <GPIO_PIN_FUNCTION_OFF"> Auto
	                      // <GPIO_PIN_FUNCTION_OFF"> Off
	                      // <GPIO_PIN_FUNCTION_A"> A
	                      // <GPIO_PIN_FUNCTION_B"> B
	                      // <GPIO_PIN_FUNCTION_C"> C
	                      // <GPIO_PIN_FUNCTION_D"> D
	                      // <GPIO_PIN_FUNCTION_E"> E
	                      // <GPIO_PIN_FUNCTION_F"> F
	                      // <GPIO_PIN_FUNCTION_G"> G
	                      // <GPIO_PIN_FUNCTION_H"> H
	                      // <GPIO_PIN_FUNCTION_I"> I
	                      GPIO_PIN_FUNCTION_OFF);

	// GPIO on PB30

	gpio_set_pin_direction(PB30,
	                       // <y> Pin direction
	                       // <id> pad_direction
	                       // <GPIO_DIRECTION_OFF"> Off
	                       // <GPIO_DIRECTION_IN"> In
	                       // <GPIO_DIRECTION_OUT"> Out
	                       GPIO_DIRECTION_OUT);

	gpio_set_pin_level(PB30,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   true);

	gpio_set_pin_pull_mode(PB30,
						// <y> Pull configuration
						// <id> pad_pull_config
						GPIO_PULL_OFF // Off
						// <GPIO_PULL_UP"> Pull-up
						// <GPIO_PULL_DOWN"> Pull-down
						/*GPIO_PULL_UP*/);

	gpio_set_pin_function(PB30,
	                      // <y> Pin function
	                      // <id> pad_function
	                      // <i> Auto : use driver pinmux if signal is imported by driver, else turn off function
	                      // <GPIO_PIN_FUNCTION_OFF"> Auto
	                      // <GPIO_PIN_FUNCTION_OFF"> Off
	                      // <GPIO_PIN_FUNCTION_A"> A
	                      // <GPIO_PIN_FUNCTION_B"> B
	                      // <GPIO_PIN_FUNCTION_C"> C
	                      // <GPIO_PIN_FUNCTION_D"> D
	                      // <GPIO_PIN_FUNCTION_E"> E
	                      // <GPIO_PIN_FUNCTION_F"> F
	                      // <GPIO_PIN_FUNCTION_G"> G
	                      // <GPIO_PIN_FUNCTION_H"> H
	                      // <GPIO_PIN_FUNCTION_I"> I
	                      GPIO_PIN_FUNCTION_OFF);

	// GPIO on PB31

	gpio_set_pin_direction(PB31,
	                       // <y> Pin direction
	                       // <id> pad_direction
	                       // <GPIO_DIRECTION_OFF"> Off
	                       // <GPIO_DIRECTION_IN"> In
	                       // <GPIO_DIRECTION_OUT"> Out
	                       GPIO_DIRECTION_OUT);

	gpio_set_pin_level(PB31,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   true);

	gpio_set_pin_pull_mode(PB31,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       GPIO_PULL_OFF // Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       /*GPIO_PULL_UP*/);

	gpio_set_pin_function(PB31,
	                      // <y> Pin function
	                      // <id> pad_function
	                      // <i> Auto : use driver pinmux if signal is imported by driver, else turn off function
	                      // <GPIO_PIN_FUNCTION_OFF"> Auto
	                      // <GPIO_PIN_FUNCTION_OFF"> Off
	                      // <GPIO_PIN_FUNCTION_A"> A
	                      // <GPIO_PIN_FUNCTION_B"> B
	                      // <GPIO_PIN_FUNCTION_C"> C
	                      // <GPIO_PIN_FUNCTION_D"> D
	                      // <GPIO_PIN_FUNCTION_E"> E
	                      // <GPIO_PIN_FUNCTION_F"> F
	                      // <GPIO_PIN_FUNCTION_G"> G
	                      // <GPIO_PIN_FUNCTION_H"> H
	                      // <GPIO_PIN_FUNCTION_I"> I
	                      GPIO_PIN_FUNCTION_OFF);

		// GPIO on PA14

		gpio_set_pin_direction(PA14,
		// <y> Pin direction
		// <id> pad_direction
		// <GPIO_DIRECTION_OFF"> Off
		// <GPIO_DIRECTION_IN"> In
		// <GPIO_DIRECTION_OUT"> Out
		GPIO_DIRECTION_OUT);

		gpio_set_pin_level(PA14,
		// <y> Initial level
		// <id> pad_initial_level
		// <false"> Low
		// <true"> High
		true);

		gpio_set_pin_pull_mode(PA14,
		// <y> Pull configuration
		// <id> pad_pull_config
		//GPIO_PULL_OFF // Off
		GPIO_PULL_UP //> Pull-up
		// <GPIO_PULL_DOWN"> Pull-down
		/*GPIO_PULL_UP*/);

		gpio_set_pin_function(PA14,
		// <y> Pin function
		// <id> pad_function
		// <i> Auto : use driver pinmux if signal is imported by driver, else turn off function
		// <GPIO_PIN_FUNCTION_OFF"> Auto
		// <GPIO_PIN_FUNCTION_OFF"> Off
		// <GPIO_PIN_FUNCTION_A"> A
		// <GPIO_PIN_FUNCTION_B"> B
		// <GPIO_PIN_FUNCTION_C"> C
		// <GPIO_PIN_FUNCTION_D"> D
		// <GPIO_PIN_FUNCTION_E"> E
		// <GPIO_PIN_FUNCTION_F"> F
		// <GPIO_PIN_FUNCTION_G"> G
		// <GPIO_PIN_FUNCTION_H"> H
		// <GPIO_PIN_FUNCTION_I"> I
		GPIO_PIN_FUNCTION_OFF);

	delay_driver_init();
	
	while(true)
	{
		for(int iter=0;iter<2;iter++)
		{
			gpio_set_pin_level(PB22,iter>0);
			gpio_set_pin_level(PB23,iter>0);
			gpio_set_pin_level(PB30,iter>0);
			gpio_set_pin_level(PB31,iter>0);
			gpio_set_pin_level(PA14,iter>0);
			delay_ms(2000);
		}
	}
}
