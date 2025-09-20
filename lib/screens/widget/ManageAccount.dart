import 'package:flutter/material.dart';

class ManageAccount extends StatelessWidget {
  const ManageAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 90,
        width: 370,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        
        //color: Colors.grey[300],
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 0),
             ),
             
          ],
          
        ),


        //////////////text///////////
        child: Row(
          children: [
            Container(
              height: 30,
              width: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                
                child: Center(child: const 
                Text("VISA",style: TextStyle(fontSize: 13.0),
                ),),
              ),
              
            ),
            Container(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsetsGeometry.only(top: 13)),
                  Text("Current Account",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(".... 3374",style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 64),
                    child: Container(
                      height: 30,
                      width: 90,
                      
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                        
                      ),
                      child: Center(
                        child: const Text(
                          "MANAGE  >",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            )
            

          ],
        ),



      ),
    );
  }
}