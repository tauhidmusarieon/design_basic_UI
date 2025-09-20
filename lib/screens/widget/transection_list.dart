import 'package:demo/screens/widget/models/transection_model.dart';
import 'package:flutter/material.dart';

class TransectionList extends StatelessWidget {
   TransectionList({super.key});

  // Use final here since the list doesn't change
   List<TransectionModel> transactions = [
    TransectionModel(
      title: "Spotify Premium",
      subtitle: "Expense",
      iconData: Icons.shop,
      amount: 9.99,
    ),
    TransectionModel(
      title: "Salary",
      subtitle: "Income",
      iconData: Icons.balance,
      amount: 5785.99,
    ),
    TransectionModel(
      title: "Electricity",
      subtitle: "Expense",
      iconData: Icons.electric_bike,
      amount: 39.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      


      itemCount: transactions.length, 
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(transactions[index].iconData,),
          title: Text(transactions[index].title!,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          subtitle: Text(transactions[index].subtitle!,),
          trailing: Text(
            "\$ ${transactions[index].amount}", 
            style: TextStyle(
            fontSize: 15,fontWeight: FontWeight.bold,
            
            
              color: transactions[index].subtitle == "Income"
                  ? Colors.green
                  : Colors.black,


            
            ),),
        );
        
      },
    );
  }
}
