import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 10),
          scrollDirection: Axis.horizontal,
          child: Container(
            child: Row(
              children: [
                buildCreditCard(context),
                SizedBox(width: 10,),
                buildCreditCard(context),
                SizedBox(width: 10),
                buildCreditCard(context),
                SizedBox(width: 10),
                buildCreditCard(context),
                SizedBox(width: 10),
                buildCreditCard(context),
                SizedBox(width: 10),
                buildCreditCard(context),
                SizedBox(width: 10),
              ],
            ),
            
          ),
        )
      ],
    );
  }
}
int cnt = 0;
Widget buildCreditCard (BuildContext context){
cnt++;
  return Container(
    width: MediaQuery.of(context).size.width*0.85,
    height: MediaQuery.of(context).size.width* 0.85/1.585,
    decoration: BoxDecoration(
    //color: Colors.blue,
    color: cnt%2 == 0 ? Colors.blue : Colors.amber,
    borderRadius: BorderRadius.circular(16)
   ),
   child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
    
    children: [

      Padding(
          padding: const EdgeInsets.only(left: 38, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("0121 4474 2549 3374", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500)),
              SizedBox(height: 10,),
              Text(
                "VALID THRU 05/33",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ),
      Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("TAUHID MUSA RIEON",style: TextStyle(color: Colors.black),),
          Text("VISA", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        
        ],
      ),
      SizedBox(height: 15,)

    ],
   )
   
  );
}

