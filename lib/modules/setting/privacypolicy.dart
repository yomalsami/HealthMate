import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class privacyPage extends StatefulWidget {
  @override
  _privacyPageState createState() => _privacyPageState();
}

class _privacyPageState extends State<privacyPage> {
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
            Text("Privacy Policy"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(LineAwesomeIcons.shield, color: Colors.white,size: 30.0,),
          ),
        ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children:<Widget>[
              Padding(padding: EdgeInsets.only(top:20.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left:10.0)),                  
                  Container(
                    height: 50.0,
                    width: 400.0,
                    child: new Text(
                      "HealthMate.",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:50.0,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top:20.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left:10.0)),                  
                  Container(
                    height: 300.0,
                    width: 400.0,
                    child: new Text(
                      "HealthMate is committed to respecting the personal privacy of our website visitors. The following statement summarizes the privacy practices of the HealthMate’s website, informing visitors of why and how the HealthMate collects personal information online and how the HealthMate uses this information.",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:25.0,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top:20.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left:10.0)),
                  Container(
                    height: 70.0,
                    width: 400.0,
                    child: new Text(
                      "What is personal information?",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:30.0,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top:20.0)),
              //Padding(padding: EdgeInsets.only(top:20.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left:10.0)),
                  Container(
                    height: 200.0,
                    width: 400.0,
                    child: new Text(
                      "Personal information is any information that can be used to identify a specific individual, and includes such information as a name, a home address, home telephone number and e-mail address.",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:25.0,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top:20.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left:10.0)),
                  Container(
                    height: 260.0,
                    width: 400.0,
                    child: new Text(
                      "The CareClinic may collect information in a non-identifying and aggregate form to enhance our website design and to share with external groups for any CareClinic related business purpose (such as re-marketing). This information cannot be personally identified with a specific individual.",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:25.0,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top:20.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left:10.0)),
                  Container(
                    height: 250.0,
                    width: 400.0,
                    child: new Text(
                      "The CareClinic uses personal information in a limited number of ways, foremost to complete transactions, deliver the selected product or service and to respond to questions or comments. The CareClinic will not sell or rent your personal information.",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:25.0,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top:20.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left:10.0)),
                  Container(
                    height: 40.0,
                    width: 400.0,
                    child: new Text(
                      "Children",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:30.0,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top:20.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left:10.0)),
                  Container(
                    height: 250.0,
                    width: 400.0,
                    child: new Text(
                      "Children should use the CareClinic’s website with the approval of a parent or guardian. Where appropriate, the CareClinic will specifically instruct children not to submit personal information on our website.",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:25.0,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top:20.0)),
            ]
          ),
        ),

    );
  }
}