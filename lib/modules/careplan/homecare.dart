import 'package:cliniccare/modules/setting/setting.dart';
import 'package:flutter/material.dart';

class carePlanPage extends StatefulWidget {
  @override
  _carePlanPageState createState() => _carePlanPageState();
}

class _carePlanPageState extends State<carePlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(left:10),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},

            )),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("My CarePlan"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white,size: 30.0,),
            onPressed: (){
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()));

              });
            },
          ),
        ],


        ));

      
  }
}