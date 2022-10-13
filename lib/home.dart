

import 'package:flutter/material.dart';
 

 
class Home extends StatelessWidget { 
  @override 
 
  Widget build(BuildContext context) { 
    return Scaffold( 
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Instagram",
               style: TextStyle(
                fontSize: 32.0,
               ),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.add),
                      iconSize: 30.0,
                      onPressed: (){},
                    ),
                    SizedBox(width: 16.0),
                    Container(
                      width: 35.0,
                     child: IconButton(
                      icon: Icon(Icons.send),
                      iconSize: 30.0,
                      onPressed: (){},
                    )
                    )
                  ],
                )
            ],
          ),
          ),
          
        ],
      
      ),
    ); 
  }
}