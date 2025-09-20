import 'package:flutter/material.dart';

class CurrentAccount extends StatelessWidget {
  const CurrentAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 12,left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("CURRENT ACCOUNT",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
          Text("\$5,432.43",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        ],
        
      ),
    );
  }
}