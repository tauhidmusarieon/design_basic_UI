import 'package:demo/screens/home_screen.dart';
import 'package:demo/screens/widget/AnalyticsScreen.dart';
import 'package:demo/screens/widget/HelpScreen.dart';
import 'package:demo/screens/widget/HistoryScreen.dart';
import 'package:demo/screens/widget/PaymentScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;
  List<Widget> screens = [
    MyHomeScreen(),
    PaymentScreen(),
    Historyscreen(),
    Analyticsscreen(),
    Helpscreen(),
  ];

  void changeScreens(int index){
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: screens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[400],

        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.payment_outlined), label: "payment"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "history"),
        BottomNavigationBarItem(icon: Icon(Icons.analytics), label: "analytics"),
        BottomNavigationBarItem(icon: Icon(Icons.help), label: "help"),
      ],
      currentIndex: _currentIndex,
      onTap: changeScreens,
      
       ),
      
    );
  }
}