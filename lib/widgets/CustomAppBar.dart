import 'package:flutter/material.dart';

class CAppBar extends StatefulWidget {
  @override
  _CAppBarState createState() => _CAppBarState();
}

class _CAppBarState extends State<CAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Container(
              decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
              child:IconButton(icon: new Icon(Icons.menu), onPressed:(){})
            ),
            Container(
              height: 40,
              width: 70,
              decoration: BoxDecoration(color:Colors.yellow,borderRadius: BorderRadius.all(Radius.elliptical(100, 50))),
              child:Center(child:Text("IMDB",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold)))
            ),
             Container(
              decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
              child:IconButton(icon: new Icon(Icons.account_circle), onPressed:(){})
            ),
          ],)
    );
  }
}