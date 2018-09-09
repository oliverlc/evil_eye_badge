#ifndef F_CPU
#define F_CPU 1000000UL
#endif

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include <util/atomic.h>
#include <avr/wdt.h>

int watchdog_counter = 0;

// Watchdog interrupt, wake from deep sleep using this
// Increment the counter. The calling funciton returns to sleep depending on the count
ISR(WDT_vect)
{
	watchdog_counter++;
}


/*
Setup the IO and timer for PWM
*/
void setup_io(void)
{
	// PB0 and PB1 outputs
	DDRB = (1<<PB0) | (1<<PB1);
	// Timer0 in mode 14, fast PWM with ICR0 as top.
	// Enable OC0A and OC0B, lower mode bits
	TCCR0A = (1<<COM0A1) | (1<<COM0B1) | (1<<WGM01);
	// Set top to 1000
	ICR0 = 1000;
	// Start timer with prescaler 1:8 and set upper mode bits
	TCCR0B = (1<<CS01)  | (1<<WGM03) | (1<<WGM02);
}


/*
Run the LED through their animation cycle
*/
void led_cycle(void)
{
	int i;

	for (i = 0; i <= 1000; i++)
	{
			OCR0A = i;
			OCR0B = i;
			_delay_ms(2);
	}
	_delay_ms(5000);
	for (i = 1000; i >= 0; i--)
	{
			OCR0A = i;
			OCR0B = i;
			_delay_ms(1);
	}
}


/*
  Delay in powerdown mode. Wake up by watchdog interrupt.
 */
void delay_power_down_wdt(uint8_t wdto, uint8_t iterations)
{
	while (watchdog_counter < iterations)
	{
    wdt_reset();
    wdt_enable(wdto);
    WDTCSR |= (1<<WDIE);
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    sleep_enable();
    // Make sure interrups are enabled and the I flag is restored
    NONATOMIC_BLOCK(NONATOMIC_RESTORESTATE)
    {
			sleep_cpu();
			wdt_reset();
			wdt_disable();
    }
    sleep_disable();
	}

	watchdog_counter = 0;
}



int main(void)
{
		setup_io();

    sei();

    while(1)
    {
			led_cycle();

			delay_power_down_wdt(WDTO_8S, 4);
    }
}
