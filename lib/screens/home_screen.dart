import 'package:demo/HomeScreen.dart';
import 'package:demo/screens/widget/CreditCard.dart';
import 'package:demo/screens/widget/ManageAccount.dart';
import 'package:demo/screens/widget/current_account.dart';
import 'package:demo/screens/widget/transection_list.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        leading: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            //image: DecorationImage(image: AssetImage("images/img2.jpg"),fit: BoxFit.cover),
            image: DecorationImage(image: NetworkImage("https://picsum.photos/200/300"),fit: BoxFit.cover)
            
          ),
          //child: Image.asset("images/profileIMG.jpg"),
          
          
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // current account
          CurrentAccount(),

          // card
          CreditCard(),

          // manage account 
          ManageAccount(),

          // transactions

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              children: [
                Text("Transactions",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                Spacer(),
                Text("See All>",style: TextStyle(fontSize: 15.8,color: Colors.blue,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          Expanded(child: TransectionList()),
          
        ],
        
      ),
      
    );
  }
}