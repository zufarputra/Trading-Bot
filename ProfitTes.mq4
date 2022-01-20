//+------------------------------------------------------------------+
//|                                                    ProfitTes.mq4 |
//|                        Copyright 2022, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property show_inputs


#include <ProfitTestmqh.mqh>
input int stopLossPips = 30;
 double signalPrice = 1.28956;
 extern int takeProfitPips = 40;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
  
 
  
  Alert("");
  //stopLossPips++;
  Alert("Input stopLoss = " + stopLossPips);
  takeProfitPips++;
  Alert(" Extern takeProfitPips = " + takeProfitPips);
 
 
  double stopLossPrice;
  double takeProfitPrice;
  
  if(Ask < signalPrice)
    {
     Alert("Price is bellow signal price");
    stopLossPrice  = CalculateStopLost(true,Ask,stopLossPips);
     
    takeProfitPrice  = CalculateTakeProfit(true,Ask,takeProfitPips);
     Alert("Entry  Price = " + Ask);
     Alert("Stopo Loss Price  " + stopLossPrice);
     Alert("Take Profit Price = " + takeProfitPrice);
     
     
     //Send
     
    }else if(Bid > signalPrice)
            {
             //Short
             Alert("Price is above signal price");
             
            stopLossPrice = CalculateStopLost(true,Bid,stopLossPips);
           takeProfitPrice = CalculateTakeProfit(false,Bid,takeProfitPips);
             
              Alert("Entry  Price = " + Ask);
                Alert("Stopo Loss Price  " + stopLossPrice);
               Alert("Take Profit Price = " + takeProfitPrice);
            }
            
            
  
  //DayOfWeekAlert();
 
 // Alert(GetPipValue());
  
  
 // Alert(GetStopLossPrice(true,1.2555,20));
//---

  // bool bIsTradingAllowed = false;
  //double askPrice = Digits;
  
  //string maxLossMessage =   "Max Loss shutdown system";

  //int maxLossInPips = 50;
  
  
  
  
  //int nb1 = 5;
  //int nb2 =2;
  //int total = nb1 + nb2;
  
  //double entryPrice = 1.75241;
  //double exitPrice = 1.75741;
  //double pipValue = 0.0001;
  
  //int  pipsGenerated = MathRound((exitPrice - entryPrice) / pipValue);
  
  //bool bIsEqual = (5 == 4);
  
  //string daayOfWeek = "Monday";
  
  //double stopLossPrice = 1.77777;
  //double bidPrice = Bid;
  
  //Alert(!true);
  
  
  //double askPrice = 1.32724;
  // double lowerBand = 1.33000;
 // string dayOfWeek = "Tuesday";
   
   //Alert(bidPrice);
   //Alert(bidPrice <= stopLossPrice);
   
    //Alert(askPrice < lowerBand && dayOfWeek != "Monday");
  //  Alert("");
    
   // double entryPrice = 1.77542;
    //int maxLossInPips = 20;
    //double stopLossPrice;
   // string dayOfWeek = "sdfdfd";
    
    //double bIsLongPosition = false;
    
     //Alert("entryPrice: " + entryPrice);
    //Alert("Stop Loss: " + stopLossPrice);
    
    
    //if(bIsLongPosition)
    //{
      //stopLossPrice = entryPrice - maxLossInPips * 0.0001;
    //}else
    //{
     //stopLossPrice = entryPrice + maxLossInPips *0.0001;
    //}
    
   // if(dayOfWeek == "Friday")
    //{
      //Alert("We are " + dayOfWeek + "lets try new open trade");
      
    //}
    //else if(dayOfWeek == "Tuesday" || dayOfWeek == "Wednesday" || dayOfWeek == "Thursday")
    //{
     //Alert("We are " + dayOfWeek + "lets try  new  or  close");
    //}
    
    //else if(dayOfWeek == "Saturday" || dayOfWeek == "Sunday")
    //{
      //Alert("It's wekend no   trade");
      //}else{
        // Alert("This  day no exist");
         //}
         
         
        //  string dayOfWeek = DayOfWeek();
          //  if(dayOfWeek == "Friday")
    //{
      //Alert("We are " + dayOfWeek + "lets try new open trade");
      
    //}
    //else if(dayOfWeek == "Tuesday" || dayOfWeek == "Wednesday" || dayOfWeek == "Thursday")
    //{
     //Alert("We are " + dayOfWeek + "lets try  new  or  close");
    //}
    
    //else if(dayOfWeek == "Saturday" || dayOfWeek == "Sunday")
    //{
      //Alert("It's wekend no   trade");
      //}else{
        // Alert("This  day no exist");
         //}
         
         
         
         }
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
