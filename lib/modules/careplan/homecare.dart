import 'package:cliniccare/modules/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

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
              icon: Icon(Icons.settings, color: Colors.white,size: 30.0,),
              onPressed: (){
                setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()));
              });
              },

            )),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Edit CarePlan"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.book, color: Colors.white,size: 30.0,),
          ),
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
                  color: Colors.teal,
                  child:Column(
                    children:<Widget>[
                      ListTile(
                        onTap: (){
                          Navigator.of(context).pushNamed("/addmed");
                        },
                        leading: Icon(
                          FontAwesomeIcons.pills,
                          color:Colors.white,
                          size: 45.0,
                        ),
                        subtitle:Text(
                          "(Tap here to add medicine reminder)",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.w300,
                            fontSize:15.0
                          ),
                        ),
                        title: Text(
                          "Medicines",
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
                  color: Colors.teal,
                  child:Column(
                    children:<Widget>[
                      ListTile(
                        onTap: (){
                          setState(() {
                            Navigator.of(context).pushNamed("/addact");
                          });
                        },
                        leading: Icon(
                          FontAwesomeIcons.running,
                          color:Colors.white,
                          size: 50.0,
                        ),
                        subtitle:Text(
                          "(Tap here to add medicine reminder)",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.w300,
                            fontSize:15.0
                          ),
                        ),
                        title: Text(
                          "Activities",
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
                  color: Colors.teal,
                  child:Column(
                    children:<Widget>[
                      ListTile(
                        onTap: (){
                          setState(() {
                            Navigator.of(context).pushNamed('/vital');
                          });
                        },
                        leading: Icon(
                          FontAwesomeIcons.thermometerFull,
                          color:Colors.white,
                          size: 50.0,
                        ),
                        subtitle:Text(
                          "(Tap here to check vitals)",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.w300,
                            fontSize:15.0
                          ),
                        ),
                        title: Text(
                          "Vitals",
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