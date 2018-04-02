#include "stm32f4xx_ll_bus.h"
#include "stm32f4xx_ll_rcc.h"
#include "stm32f4xx_ll_system.h"
#include "stm32f4xx_ll_utils.h"
#include "stm32f4xx_ll_pwr.h"
#include "stm32f4xx_ll_gpio.h"
#include "stm32f4xx_ll_exti.h"

#define RS LL_GPIO_PIN_0
#define RW LL_GPIO_PIN_1
#define E  LL_GPIO_PIN_2
#define D4 LL_GPIO_PIN_3
#define D5 LL_GPIO_PIN_4
#define D6 LL_GPIO_PIN_5
#define D7 LL_GPIO_PIN_6
#define FirstButtonPin  LL_GPIO_PIN_0
#define SecondButtonPin LL_GPIO_PIN_1
#define ThirdButtonPin  LL_GPIO_PIN_2
#define BuzzerPin LL_GPIO_PIN_12

#define delay_after_press 200

#define clock_colon 0x89    //клетка с двоеточием времени
#define alarm_colon 0xC9    //клетка с двоеточием будильника
#define alarm_d1    0xC7    //клетка с первой цифрой будильника
#define alarm_d2    0xC8    //клетка с второй цифрой будильника
#define alarm_d3    0xCA    //клетка с третьей цифрой будильника
#define alarm_d4    0xCB    //клетка с четвертой цифрой будильника
#define time_d1     0x87    //клетка с первой цифрой времени
#define time_d2     0x88    //клетка с второй цифрой времени
#define time_d3     0x8A    //клетка с третьей цифрой времени
#define time_d4     0x8B    //клетка с четвертой цифрой времени

#define time         0      //показ времени и будильника
#define alarm        1      //сработал будильник
#define time_change  2      //настраиваем время
#define alarm_change 3      //настраиваем время



void SystemClock_Config(void);
int tick = 0;
int last_update_toggle = 0;
int last_update_time = 0;
int toggle_speed = 1000;

int hours = 9;
int minutes = 41;

int alarm_hours = 12;
int alarm_minutes = 0;

int last_alarm_hours = 12;
int last_alarm_minutes = 0;

int cursor;
char is_cursor_on = 1;

int is_button1_pushed;
int is_button2_pushed;
int is_button3_pushed;

int button1_last_pushed = 0;
int button2_last_pushed = 0;
int button3_last_pushed = 0;

int state = time;
int is_buzzer_on = 0;

//задержка на time_ms мс
void myDelay(int time_ms)
{
    int timer_start = tick;
    while(tick - timer_start < time_ms);
}
//пишем данные в дисплей (выставляем 4 бита на шине данных D7-D4)
void write_data(uint8_t data)
{
    if (((data>>3)&0x01) == 0x01){LL_GPIO_SetOutputPin(GPIOD, D7);} else {LL_GPIO_ResetOutputPin(GPIOD, D7);}
    if (((data>>2)&0x01) == 0x01){LL_GPIO_SetOutputPin(GPIOD, D6);} else {LL_GPIO_ResetOutputPin(GPIOD, D6);}
    if (((data>>1)&0x01) == 0x01){LL_GPIO_SetOutputPin(GPIOD, D5);} else {LL_GPIO_ResetOutputPin(GPIOD, D5);}
    if (((data>>0)&0x01) == 0x01){LL_GPIO_SetOutputPin(GPIOD, D4);} else {LL_GPIO_ResetOutputPin(GPIOD, D4);}
}

//передача команды на дисплей
void LCD_SendCommand(uint8_t Command)
{
    LL_GPIO_ResetOutputPin(GPIOD, RS);

    write_data(Command>>4);
    LL_GPIO_SetOutputPin(GPIOD, E);
    myDelay(1);
    LL_GPIO_ResetOutputPin(GPIOD, E);
    myDelay(1);

    write_data(Command);
    myDelay(1);
    LL_GPIO_SetOutputPin(GPIOD, E);
    myDelay(1);
    LL_GPIO_ResetOutputPin(GPIOD, E);

    write_data(0);

}

//передача информации на дисплей
void LCD_SendData(uint8_t Command)
{
    LL_GPIO_SetOutputPin(GPIOD, RS);

    write_data(Command>>4);
    LL_GPIO_SetOutputPin(GPIOD, E);
    myDelay(1);
    LL_GPIO_ResetOutputPin(GPIOD, E);
    myDelay(1);


    write_data(Command);
    LL_GPIO_SetOutputPin(GPIOD, E);
    myDelay(1);
    LL_GPIO_ResetOutputPin(GPIOD, E);

    LL_GPIO_ResetOutputPin(GPIOD, RS);
    write_data(0);
}

//Пишем строку на дисплее
void LCD_print_str(char *str)
{
    int i;
    for(i = 0; str[i] != '\0'; i++)
        LCD_SendData(str[i]);
}

//инициализируем дисплей
void LCD_init(void)
{
    myDelay(20);

    LL_GPIO_SetOutputPin(GPIOD, D5);
    LL_GPIO_SetOutputPin(GPIOD, D4);
    LL_GPIO_SetOutputPin(GPIOD, E);
    myDelay(1);
    LL_GPIO_ResetOutputPin(GPIOD, E);
    myDelay(1);

    LL_GPIO_SetOutputPin(GPIOD, D5);
    LL_GPIO_SetOutputPin(GPIOD, D4);
    LL_GPIO_SetOutputPin(GPIOD, E);
    myDelay(1);
    LL_GPIO_ResetOutputPin(GPIOD, E);
    myDelay(1);

    LL_GPIO_SetOutputPin(GPIOD, D5);
    LL_GPIO_SetOutputPin(GPIOD, D4);
    LL_GPIO_SetOutputPin(GPIOD, E);
    myDelay(1);
    LL_GPIO_ResetOutputPin(GPIOD, E);
    myDelay(1);

    LL_GPIO_SetOutputPin(GPIOD, D5);
    LL_GPIO_ResetOutputPin(GPIOD, D4);
    LL_GPIO_SetOutputPin(GPIOD, E);
    myDelay(1);
    LL_GPIO_ResetOutputPin(GPIOD, E);
    myDelay(1);

    LCD_SendCommand(0x28);
    myDelay(1);

    LCD_SendCommand(0xF);
    myDelay(1);

    LCD_SendCommand(0x1);
    myDelay(1);

    LCD_SendCommand(0x6);
    myDelay(1);

    LCD_SendCommand(0xF);
    myDelay(1);

    LCD_SendCommand(0xC);
    char str1[] = "Time:";
    LCD_print_str(str1);
    LCD_print_time();
    LCD_SendCommand(0xC0);
    char str2[] = "Alarm:";
    LCD_print_str(str2);
    LCD_print_alarm();
    cursor = clock_colon;

}

//Пишем время на экране
void LCD_print_time(void)
{
    int d;
    LCD_SendCommand(time_d1); //курсор на начало места под время
    if (d = hours / 10)
        LCD_SendData('0' + d);
    else
        LCD_SendData(' ');
    LCD_SendData('0' + hours % 10);
    LCD_SendData(':');
    LCD_SendData('0' + minutes / 10);
    LCD_SendData('0' + minutes % 10);
}

//Пишем время будильника на экране
void LCD_print_alarm(void)
{
    int d;
    LCD_SendCommand(alarm_d1); //курсор на начало места под время будильник
    if (d = alarm_hours / 10)
        LCD_SendData('0' + d);
    else
        LCD_SendData(' ');
    LCD_SendData('0' + alarm_hours % 10);
    LCD_SendData(':');
    LCD_SendData('0' + alarm_minutes / 10);
    LCD_SendData('0' + alarm_minutes % 10);
}

//моргаем выбранным в cursor символом
void toggle_cursor(void)
{
    if(is_cursor_on)
    {
        LCD_SendCommand(cursor);
        LCD_SendData(' ');
        is_cursor_on = 0;
    }
    else
    {
        int d;
        LCD_SendCommand(cursor);
        if(cursor == clock_colon || cursor == alarm_colon)
            LCD_SendData(':');
        else if(cursor == alarm_d1)
        {
            if (d = alarm_hours / 10)
                LCD_SendData('0' + d);
            else
                LCD_SendData(' ');
        }
        else if(cursor == alarm_d2)
            LCD_SendData('0' + alarm_hours % 10);
        else if(cursor == alarm_d3)
            LCD_SendData('0' + alarm_minutes / 10);
        else if(cursor == alarm_d4)
            LCD_SendData('0' + alarm_minutes % 10);

        else if(cursor == time_d1)
        {
            if (d = hours / 10)
                LCD_SendData('0' + d);
            else
                LCD_SendData(' ');
        }
        else if(cursor == time_d2)
            LCD_SendData('0' + hours % 10);
        else if(cursor == time_d3)
            LCD_SendData('0' + minutes / 10);
        else if(cursor == time_d4)
            LCD_SendData('0' + minutes % 10);
        is_cursor_on = 1;
    }
}

void Periph_init()
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOD);

    LL_GPIO_SetPinMode(GPIOD, RS, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOD, RW, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOD, E,  LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOD, D4, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOD, D5, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOD, D6, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOD, D7, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOD, BuzzerPin, LL_GPIO_MODE_OUTPUT);

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);

    LL_GPIO_SetPinMode(GPIOC, FirstButtonPin, LL_GPIO_MODE_INPUT);
    LL_GPIO_SetPinPull(GPIOC, FirstButtonPin, LL_GPIO_PULL_UP);
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_SYSCFG);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTC, LL_SYSCFG_EXTI_LINE0);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);
    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);
    NVIC_EnableIRQ(EXTI0_IRQn);
    NVIC_SetPriority(EXTI0_IRQn, 0);

    LL_GPIO_SetPinMode(GPIOC, SecondButtonPin, LL_GPIO_MODE_INPUT);
    LL_GPIO_SetPinPull(GPIOC, SecondButtonPin, LL_GPIO_PULL_UP);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTC, LL_SYSCFG_EXTI_LINE1);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_1);
    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_1);
    NVIC_EnableIRQ(EXTI1_IRQn);
    NVIC_SetPriority(EXTI1_IRQn, 0);

    LL_GPIO_SetPinMode(GPIOC, ThirdButtonPin, LL_GPIO_MODE_INPUT);
    LL_GPIO_SetPinPull(GPIOC, ThirdButtonPin, LL_GPIO_PULL_UP);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTC, LL_SYSCFG_EXTI_LINE2);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_2);
    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_2);
    NVIC_EnableIRQ(EXTI2_IRQn);
    NVIC_SetPriority(EXTI2_IRQn, 0);
}
//для моргания символом вызываем эту функцию из while
void toggle_cursor_WHILE(void)
{
    if(tick - last_update_toggle > toggle_speed)
    {
        toggle_cursor();
        last_update_toggle = tick;
    }

}

//для обновления времени вызываем эту функцию из while
void time_update_WHILE(void)
{
    if(state == time_change)
        return 0;
    if(tick - last_update_time > 60000)
    {
        minutes++;
        if (minutes == 60)
        {
            hours++;
            minutes = 0;
        }
        if (hours == 24)
        {
            hours = 0;
        }
        last_update_time = tick;
        LCD_print_time();
    }
}

int
main(void) {
    SystemClock_Config();
    Periph_init();
    LL_GPIO_SetPinMode(GPIOD, LL_GPIO_PIN_14, LL_GPIO_MODE_OUTPUT);
    LCD_init();
    while (1){
        toggle_cursor_WHILE();
        time_update_WHILE();
        switch (state)
        {
            case time:
            if(hours == alarm_hours && minutes == alarm_minutes && !(hours == last_alarm_hours && minutes == last_alarm_minutes))
                state = alarm;
            if(is_button1_pushed)
            {
                int i;
                for (i = 0; i < 3; i++)
                {
                    is_buzzer_on = 1;
                    myDelay(100);
                    is_buzzer_on = 0;
                    myDelay(100);
                }
                state = time_change;
                cursor = time_d1;
                toggle_speed = 500;
                is_button1_pushed = 0;
                LCD_print_time();

            }
            if(is_button3_pushed)
            {
                state = alarm_change;
                toggle_speed = 500;
                is_buzzer_on = 1;
                myDelay(500);
                is_buzzer_on = 0;
                cursor = alarm_d1;
                is_button3_pushed = 0;
                LCD_print_time();

            }
            break;
            case alarm:
            is_buzzer_on = 1;
            myDelay(100);
            is_buzzer_on = 0;
            myDelay(100);
            if(is_button3_pushed)
            {
                is_button3_pushed = 0;
                state = time;
                last_alarm_hours = alarm_hours;
                last_alarm_minutes = alarm_minutes;
                myDelay(300);
            }
            break;
            case time_change:
            if(is_button3_pushed)
            {
                if(cursor == time_d1)
                {
                    LCD_print_time();
                    cursor = time_d2;
                }
                else if(cursor == time_d2)
                {
                    LCD_print_time();
                    cursor = time_d3;
                }
                else if(cursor == time_d3)
                {
                    LCD_print_time();
                    cursor = time_d4;
                }
                else if(cursor == time_d4)
                {
                    int i;
                    LCD_print_time();
                    toggle_speed = 1000;
                    cursor = clock_colon;
                    state = time;
                    for (i = 0; i < 3; i++)
                    {
                        is_buzzer_on = 1;
                        myDelay(100);
                        is_buzzer_on = 0;
                        myDelay(100);
                    }
                    is_button3_pushed = 0;
                    state = time;
                    break;
                }
                is_button3_pushed = 0;
                is_buzzer_on = 1;
                myDelay(300);
                is_buzzer_on = 0;
            }
            if(is_button2_pushed)
            {
                if(cursor == time_d1)
                {
                    if(hours <= 13)
                        hours += 10;
                    else if (hours <= 19)
                        hours = 20;
                    else if (hours <= 23)
                        hours -= 20;
                }
                else if(cursor == time_d2)
                {
                    if(hours / 10 == 2)
                        if(hours % 10 == 3)
                            hours -= 3;
                        else
                            hours++;
                        else
                            if(hours % 10 == 9)
                                hours -= 9;
                            else
                                hours++;
                        }
                        else if(cursor == time_d3)
                        {
                            int d = minutes / 10;
                            if(d == 5)
                                minutes -= 50;
                            else
                                minutes += 10;
                        }
                        else if(cursor == time_d4)
                        {
                            int d = minutes % 10;
                            if(d == 9)
                                minutes -= 9;
                            else
                                minutes++;
                        }
                        else
                        {
                            myDelay(300);
                            break;
                        }
                        LCD_print_time();
                        is_button2_pushed = 0;
                        is_buzzer_on = 1;
                        myDelay(100);
                        is_buzzer_on = 0;
                        myDelay(200);
                    }
                    break;
                    case alarm_change:
                    if(is_button3_pushed)
                    {
                        if(cursor == alarm_d1)
                        {
                            LCD_print_alarm();
                            cursor = alarm_d2;
                        }
                        else if(cursor == alarm_d2)
                        {
                            LCD_print_alarm();
                            cursor = alarm_d3;
                        }
                        else if(cursor == alarm_d3)
                        {
                            LCD_print_alarm();
                            cursor = alarm_d4;
                        }
                        else if(cursor == alarm_d4)
                        {
                            LCD_print_alarm();
                            toggle_speed = 1000;
                            cursor = clock_colon;
                            state = time;
                            is_buzzer_on = 1;
                            myDelay(500);
                            is_buzzer_on = 0;
                            is_button3_pushed = 0;
                            break;
                        }
                        is_button3_pushed = 0;
                        is_buzzer_on = 1;
                        myDelay(300);
                        is_buzzer_on = 0;
                    }
                    if(is_button2_pushed)
                    {
                        if(cursor == alarm_d1)
                        {
                            if(alarm_hours <= 13)
                                alarm_hours += 10;
                            else if (alarm_hours <= 19)
                                alarm_hours = 20;
                            else if (alarm_hours <= 23)
                                alarm_hours -= 20;
                        }
                        else if(cursor == alarm_d2)
                        {
                            if(alarm_hours / 10 == 2)
                                if(alarm_hours % 10 == 3)
                                    alarm_hours -= 3;
                                else
                                    alarm_hours++;
                                else
                                    if(alarm_hours % 10 == 9)
                                        alarm_hours -= 9;
                                    else
                                        alarm_hours++;
                                }
                                else if(cursor == alarm_d3)
                                {
                                    int d = alarm_minutes / 10;
                                    if(d == 5)
                                        alarm_minutes -= 50;
                                    else
                                        alarm_minutes += 10;
                                }
                                else if(cursor == alarm_d4)
                                {
                                    int d = alarm_minutes % 10;
                                    if(d == 9)
                                        alarm_minutes -= 9;
                                    else
                                        alarm_minutes++;
                                }
                                else
                                {
                                    myDelay(300);
                                    break;
                                }
                                LCD_print_alarm();
                                is_button2_pushed = 0;
                                is_buzzer_on = 1;
                                myDelay(100);
                                is_buzzer_on = 0;
                                myDelay(200);
                            }
                            break;
                        }
                    }

                }

/**
  *   System Clock Configuration
  *   The system Clock is configured as follow :
  *   System Clock source            = PLL (HSE)
  *   SYSCLK(Hz)                     = 168000000
  *   HCLK(Hz)                       = 168000000
  *   AHB Prescaler                  = 1
  *   APB1 Prescaler                 = 4
  *   APB2 Prescaler                 = 2
  *   HSE Frequency(Hz)              = 8000000
  *   PLL_M                          = 8
  *   PLL_N                          = 336
  *   PLL_P                          = 2
  *   VDD(V)                         = 3.3
  *   Main regulator output voltage  = Scale1 mode
  *   Flash Latency(WS)              = 5
  */
                void
                SystemClock_Config() {
    /* Enable HSE oscillator */
                    LL_RCC_HSE_Enable();
                    while(LL_RCC_HSE_IsReady() != 1);

    /* Set FLASH latency */
                    LL_FLASH_SetLatency(LL_FLASH_LATENCY_5);

    /* Main PLL configuration and activation */
                    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSE, LL_RCC_PLLM_DIV_8,
                        336, LL_RCC_PLLP_DIV_2);
                    LL_RCC_PLL_Enable();
                    while(LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
                    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
                    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
                    while(LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 & APB2 prescaler */
                    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_4);
                    LL_RCC_SetAPB2Prescaler(LL_RCC_APB2_DIV_2);

    /* Set systick to 1ms */
    SysTick_Config(168000000/8000);//1ms

    /* Update CMSIS variable (which can be updated also
         * through SystemCoreClockUpdate function) */
    SystemCoreClock = 168000000;
}

void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
    /* Go to infinite loop when Hard Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
    /* Go to infinite loop when Memory Manage exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
    /* Go to infinite loop when Bus Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
    /* Go to infinite loop when Usage Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
}

/**
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
}

/**
  * @brief  This function handles PendSVC exception.
  * @param  None
  * @retval None
  */
void PendSV_Handler(void)
{
}

/**
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */

int tick1 = 0;
void
SysTick_Handler(void) {
    tick1++;
    if(is_buzzer_on)
        LL_GPIO_TogglePin(GPIOD, LL_GPIO_PIN_12);
    if (tick1 == 8)
    {
        tick++;
        tick1 = 0;
    }
}

void EXTI0_IRQHandler(void)
{
    if(tick - button1_last_pushed > delay_after_press)
        is_button1_pushed = 1;
    button1_last_pushed = tick;
    //don't forget to add this line at the end
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
}

void EXTI1_IRQHandler(void)
{
    if(tick - button2_last_pushed > delay_after_press)
        is_button2_pushed = 1;
    button2_last_pushed = tick;
    //don't forget to add this line at the end
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
}

void EXTI2_IRQHandler(void)
{
    if(tick - button3_last_pushed > delay_after_press)
        is_button3_pushed = 1;
    button3_last_pushed = tick;
    //don't forget to add this line at the end
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_2);
}
