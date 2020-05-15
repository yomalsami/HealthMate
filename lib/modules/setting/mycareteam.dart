import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class careTeam extends StatefulWidget {
  @override
  _careTeamState createState() => _careTeamState();
}

class _careTeamState extends State<careTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(left:10),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.of(context).pushNamed('/setting');
              },

            )),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("My Care Team"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(LineAwesomeIcons.pencil, color: Colors.white,size: 30.0,),
            onPressed: (){
              setState(() {
                Navigator.of(context).pushNamed("/editemergency1");
              });
            },
          ),
        ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top:20.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left:20.0),),
                Container(
                  child:new Text(
                    "Add Your Emergency Contacts",
                    style:TextStyle(color: Colors.black,fontSize:20.0,fontWeight:FontWeight.w400)
                  ),
                )
              ]
            ),
            Padding(padding: EdgeInsets.only(top:20.0),),
            Container(
              height:250.0,
              width: 400.0,              
              child: Card(
                elevation: 16.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                //margin: const EdgeInsets.all(8.0),
                child: Column(
                  children:[
                    ListTile(
                      leading: Icon(
                        LineAwesomeIcons.user,
                        color:Colors.black,
                        size: 30.0,),
                      title:new Text(
                        "Emergency Contact 1",
                        style:TextStyle(
                          color:Colors.black,
                          fontSize:20.0,
                          fontWeight:FontWeight.w400,
                        )
                      )
                    ),

                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top:80.0)),
            Container(
              height:250.0,
              width: 400.0,              
              child: Card(
                elevation: 16.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                //margin: const EdgeInsets.all(8.0),
                child: Column(
                  children:[
                    ListTile(
                      leading: Icon(
                        LineAwesomeIcons.user,
                        color:Colors.black,
                        size: 30.0,),
                      title:new Text(
                        "Emergency Contact 2",
                        style:TextStyle(
                          color:Colors.black,
                          fontSize:20.0,
                          fontWeight:FontWeight.w400,
                        )
                      )
                    ),

                  ],
                ),
              ),
            ),
            ]
          )
        )
    );
  }
}