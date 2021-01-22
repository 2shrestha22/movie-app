import 'package:flutter/material.dart';

class CAppBar extends StatefulWidget {
  @override
  _CAppBarState createState() => _CAppBarState();
}

class _CAppBarState extends State<CAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container_Icon(Icons.menu),
        Container(
            height: 40,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.elliptical(100, 50))),
            child: Center(
                child: Text("IMDB",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)))),
        Container_Icon(Icons.account_circle),
      ],
    ));
  }

  // ignore: non_constant_identifier_names
  Widget Container_Icon(dynamic icon) {
    return Container(
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: IconButton(icon: new Icon(icon), onPressed: () {}));
  }
}
