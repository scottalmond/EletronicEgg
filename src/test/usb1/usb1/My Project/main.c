#include <atmel_start.h>

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	int temp=0;
	while (1)
	{
		delay_ms(300);
		temp+=2;
		printf();
	}

	/* Replace with your application code */
	while (1) {
		cdcd_acm_example();
	}
}
