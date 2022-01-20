//+------------------------------------------------------------------+
//|                                                ProfitTestmqh.mqh |
//|                        Copyright 2022, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property strict
//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
// #define MacrosHello   "Hello, world!"
// #define MacrosYear    2010
//+------------------------------------------------------------------+
//| DLL imports                                                      |
//+------------------------------------------------------------------+
// #import "user32.dll"
//   int      SendMessageA(int hWnd,int Msg,int wParam,int lParam);
// #import "my_expert.dll"
//   int      ExpertRecalculate(int wParam,int lParam);
// #import
//+------------------------------------------------------------------+
//| EX5 imports                                                      |
//+------------------------------------------------------------------+
// #import "stdlib.ex5"
//   string ErrorDescription(int error_code);
// #import
//+------------------------------------------------------------------+
double CalculateTakeProfit(bool isLong, double entryPrice, int pips)
 
 {
 
 double takeProfit;
 if(isLong)
   {
    takeProfit = entryPrice + pips * GetPipValue();
   }else
      {
       takeProfit = entryPrice - pips * GetPipValue();
      }
      return takeProfit;
 
 }
 
 double CalculateStopLost(bool isLong, double entryPrice, int pips)
 
 {
 
   double stopLoss;
 if(isLong)
   {
    stopLoss = entryPrice - pips * GetPipValue();
   }else
      {
       stopLoss = entryPrice + pips * GetPipValue();
      }
      return stopLoss;
 
 }
         
         
        
 double GetPipValue()
         
         
         {
            if(_Digits >= 4)
              {
               return 0.0001;
              }else
                 {
                  return 0.01;
                 }
         }

  void DayOfWeekAlert()
         {
         
         int dayOfWeek = DayOfWeek();
         
         switch (dayOfWeek)
         {
         
         case 5 : Alert("haari  1");break;
         
         
         default:Alert("eroor");break;
         
         }
       
   
  }
  
   double GetStopLossPrice(bool bIsLongPosition, double entryPrice, int maxLossInPips)
{

  double stopLossPrice;
  
  if(bIsLongPosition)
    {
     stopLossPrice = entryPrice - maxLossInPips * 0.0001;
    }else
       {
          stopLossPrice = entryPrice + maxLossInPips * 0.0001;
       }
       
       return  stopLossPrice;

}
