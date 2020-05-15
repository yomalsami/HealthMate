import 'package:flutter/material.dart';

class resources extends StatefulWidget {
  @override
  _resourcesState createState() => _resourcesState();
}

class _resourcesState extends State<resources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(left:10),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.of(context).pushNamed('/settings');
              },

            )),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Settings"),
          ],
        ),
        actions: <Widget>[
          Icon(
            Icons.info,
            size: 20.0,
            color: Colors.white,
          ),
        ],
        ),
      
    );
  }
}