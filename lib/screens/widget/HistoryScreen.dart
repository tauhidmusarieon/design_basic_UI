import 'package:flutter/material.dart';

class Historyscreen extends StatelessWidget {
  const Historyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Icon(Icons.construction, size: 80, color: Colors.orange),
              SizedBox(height: 20),
              Text(
                "Oops! History Screen is under construction 🚧\nPlease grab a coffee and come back later ☕",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
