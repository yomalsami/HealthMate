import 'package:call_number/call_number.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class emergencyPage extends StatefulWidget {
  @override
  _emergencyPageState createState() => _emergencyPageState();
}

class _emergencyPageState extends State<emergencyPage> {

_initCall() async {
    CallNumber().callNumber("9924700284");
}

_initCall1() async {
    CallNumber().callNumber("9924700284");
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Padding(
            padding: EdgeInsets.only(left:10),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.of(context).pushNamed('/home');
              },

            )),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Emergency"),
          ],
        ),
        actions: <Widget>[
          Padding(padding: EdgeInsets.only(left:50.0))
        ],
        ),
        body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:20.0)),
              Container(
                  height: 100.0,
                  width: 400.0,
                  child: new Card(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.red,
                  child:Column(
                    children:<Widget>[
                      ListTile(
                        onTap: (){
                          setState(() {
                            _initCall();
                          });
                        },
                        leading: Icon(
                          LineAwesomeIcons.ambulance,
                          color:Colors.white,
                          size: 50.0,
                        ),
                        subtitle:Text(
                          "(Tap here to dial 108)",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.w300,
                            fontSize:15.0
                          ),
                        ),
                        title: Text(
                          "CALL AMBULANCE",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.w300,
                            fontSize:25.0
                          ),
                        ),
                        ),
                      
                    ]
                  )

                ),
              ),
              Padding(padding: EdgeInsets.only(top:20.0)),
              Container(
                  height: 100.0,
                  width: 400.0,
                  child: new Card(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.red,
                  child:Column(
                    children:<Widget>[
                      ListTile(
                        onTap: (){
                          setState(() {
                            _initCall1();
                          });
                        },
                        leading: Icon(
                          LineAwesomeIcons.star,
                          color:Colors.white,
                          size: 50.0,
                        ),
                        subtitle:Text(
                          "(Tap here to dial 100)",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.w300,
                            fontSize:15.0
                          ),
                        ),
                        title: Text(
                          "CALL POLICE",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.w300,
                            fontSize:25.0
                          ),
                        ),
                        ),
                      
                    ]
                  )

                ),
              ),
              Padding(padding: EdgeInsets.only(top:20.0)),
              Container(
                  height: 100.0,
                  width: 400.0,
                  child: new Card(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.red,
                  child:Column(
                    children:<Widget>[
                      ListTile(
                        onTap: (){
                          setState(() {
                            Navigator.of(context).pushNamed('/editProfile');
                          });
                        },
                        leading: Icon(
                          LineAwesomeIcons.pencil,
                          color:Colors.white,
                          size: 50.0,
                        ),
                        subtitle:Text(
                          "(Edit your profile)",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.w300,
                            fontSize:15.0
                          ),
                        ),
                        title: Text(
                          "Emergency Profile",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.w300,
                            fontSize:25.0
                          ),
                        ),
                        ),
                      
                    ]
                  )

                ),
              ),
            ],
          ),
          ),
      
    );
  }
}