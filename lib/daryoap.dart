
import 'package:flutter/material.dart';
class Daryoap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
   drawer:Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      Container(
        width: 100.0,
        height: 200.0,
        color: Color.fromARGB(255, 22, 146, 248),
        child: Text("Daryo"),
        
      ),
      
    ],
  ),
) ,
    );
  }
}