/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/
//ECTE433 LAB 8
#include "main.h"
#include "stm32f7xx.h"
#include "stm32746g_discovery.h"
#include "stm32746g_discovery_ts.h"
#include "stm32746g_discovery_lcd.h"
#include "cmsis_os.h"



TaskHandle_t t1_handle;
TaskHandle_t t2_handle;
TaskHandle_t t3_handle;
TaskHandle_t t4_handle;

static void Task_1(void *argument);
static void Task_2(void *argument);
static void Task_3(void *argument);
static void Task_4(void *argument);


uint8_t aTxBuffer[80];

unsigned long var_1 = 0;
unsigned long var_2 = 0;

int main(void)
{
	  HAL_Init();
	  SystemClock_Config();

	  BSP_LED_Init(LED1);
	  BSP_PB_Init(BUTTON_KEY, BUTTON_MODE_GPIO);
	  usart_initialize();

	  BSP_LCD_Init();

	  /* Initialize the LCD Layers */
	  BSP_LCD_LayerDefaultInit(LTDC_ACTIVE_LAYER, SDRAM_DEVICE_ADDR);
	  BSP_LCD_SelectLayer(LTDC_ACTIVE_LAYER);
	  BSP_LCD_SetBackColor(LCD_COLOR_WHITE);
	  BSP_LCD_Clear(LCD_COLOR_WHITE);
	  //BSP_LCD_DisplayStringAtLine(4, (uint8_t*)"how are you" );


	    //creating the tasks
	   xTaskCreate(Task_1,(const char*) "t1",configMINIMAL_STACK_SIZE,NULL,tskIDLE_PRIORITY,&t1_handle);
	   xTaskCreate(Task_2,(const char*) "t2",configMINIMAL_STACK_SIZE,NULL,tskIDLE_PRIORITY,&t2_handle);
	   xTaskCreate(Task_3,(const char*) "t3",configMINIMAL_STACK_SIZE,NULL,tskIDLE_PRIORITY,&t3_handle);
	   xTaskCreate(Task_4,(const char*) "t4",configMINIMAL_STACK_SIZE,NULL,tskIDLE_PRIORITY,&t4_handle);

	   vTaskStartScheduler();
	for(;;);
}


static void Task_1(void *argument){
  while(1){
	  var_1++;
	  vTaskDelay(50);
	  //HAL_UART_Transmit(&UartHandle, (uint8_t*)aTxBuffer, TXBUFFERSIZE, 5000);
  }
}
static void Task_2(void *argument)
{
	  while(1){
	  	if(BSP_PB_GetState(BUTTON_KEY)){
	  		vTaskDelete(t1_handle);
	  		while(BSP_PB_GetState(BUTTON_KEY)){

	  		}
	  	}
	  }

}

static void Task_3(void *argument)
{
  char buffer1 [20];
  while(1){
	  vTaskDelay(20);
	  char buffer1 [20];
	  itoa (var_1,buffer1,10);

	  BSP_LCD_ClearStringLine(0);
	  BSP_LCD_DisplayStringAtLine(0, buffer1 );
	  //printf("my name is emon");
  }
}


static void Task_4(void *argument)
{
  char buffer1 [200] ;
  while(1){
	  vTaskDelay(500);
	  vTaskList( buffer1);
	  HAL_UART_Transmit(&UartHandle, (uint8_t*)buffer1,strlen(buffer1), 5000);
  }
}
