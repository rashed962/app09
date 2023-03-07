import 'package:flutter/material.dart';


import '../modules/Login.dart';


class MainScreen extends StatefulWidget{
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> layoutScreens = [LoginPage(),];
  int currentIndex = 0 ;

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign In💛"),
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 0,
          actions:
          [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            ),
          ],
        ),

        body: layoutScreens[currentIndex]
    );
  }
}