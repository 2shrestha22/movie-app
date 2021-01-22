import 'package:flutter/material.dart';

class SEARCHBAR extends StatefulWidget {
  @override
  _SEARCHBARState createState() => _SEARCHBARState();
}

class _SEARCHBARState extends State<SEARCHBAR> {
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(top:10,left: 10,right:10),
          decoration: BoxDecoration(
            color:Colors.grey[300],
            borderRadius:BorderRadius.circular(18),
             boxShadow: [
                    BoxShadow(
                      color:Colors.grey[300],
                      offset:Offset(4.0,4.0),
                      blurRadius:20,
                      spreadRadius:3
                    ),
                      BoxShadow(
                      color:Colors.white,
                      offset:Offset(-4.0,-4.0),
                      blurRadius:20,
                      spreadRadius:3
                    )
                  ]
          ),
          child: TextField(
            decoration:InputDecoration(  
              hintText:"Search Food",
              prefixIcon:Icon(Icons.search),
              border:InputBorder.none, 
            )
          ),  
          );
  }
}