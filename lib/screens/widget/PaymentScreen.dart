


import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Screen"),
        backgroundColor: Colors.blue,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                
                Icons.construction_outlined,
                size: 80,
                color: Colors.orange,
              ),
              SizedBox(height: 20,),
              Text("Oops! Payment Screen is under construction 🚧\nPlease grab a coffee and come back later ☕",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
            ],
          ),
        ),
      ),
    );
  }
}