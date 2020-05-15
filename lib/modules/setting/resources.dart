import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

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
                Navigator.of(context).pushNamed('/setting');
              },

            )),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Resources Center"),
          ],
        ),
        actions: <Widget>[
          Padding(padding: EdgeInsets.only(left:20.0)),
          Icon(
            Icons.info_outline,
            size: 30.0,
            color: Colors.white,
          ),
        ],
        ),
        body:Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:20.0)),
            Container(
              child: Column(
                children:<Widget>[
                  new Text(
                    "LEARN MORE ABOUT",
                    style:TextStyle(fontWeight: FontWeight.w300,fontSize:20.0,color:Colors.white)
                  ),
                ]
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
              margin:const EdgeInsets.all(8.0),
              color:Colors.teal,
              child: Column(
                children: <Widget>[
                  ListTile(
                    onTap: () => _onButtonPressed1(),
                    trailing: Icon(
                      LineAwesomeIcons.chevron_right,
                      size:20.0,
                      color:Colors.white,
                    ),
                    title: Text(
                      "Care Plans",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:20.0
                      ),
                    ),
                  ),
                  Divider(
                      height:10.0,
                      thickness: 5.0,
                      color: Colors.black,),
                  ListTile(
                    onTap: () => _onButtonPressed2(),
                    trailing: Icon(
                      LineAwesomeIcons.chevron_right,
                      size:20.0,
                      color:Colors.white,
                    ),
                    title: Text(
                      "Care Teams",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:20.0
                      ),
                    ),
                  ),
                  Divider(
                      height:10.0,
                      thickness: 5.0,
                      color: Colors.black,),
                  ListTile(
                    onTap: () => _onButtonPressed3(),
                    trailing: Icon(
                      LineAwesomeIcons.chevron_right,
                      size:20.0,
                      color:Colors.white,
                    ),
                    title: Text(
                      "Emergency",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:20.0
                      ),
                    ),
                  ),
                  
                ],
              ),
            )
          ],
        )
      
    );
  }

  void _onButtonPressed1(){
    showModalBottomSheet(context: context, 
    builder:(context){
      return Container(
        color: Colors.black,
        height: 1000.0,
          child: Container(
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius:BorderRadius.only(
              topLeft: const Radius.circular(30.0),
              topRight: const Radius.circular(30.0)
            )
          ),
          child:Scaffold(
              appBar: AppBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0))
                ),
                leading: Padding(
                padding: EdgeInsets.only(left:0)),
              title:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Care Plans"),
                ],
              ),
              actions: <Widget>[
              Padding(padding: EdgeInsets.only(left:20.0)),
                  IconButton(icon: Icon(Icons.cancel,size: 30.0,color: Colors.white,), 
                  onPressed: (){setState(() {
                    Navigator.of(context).pop();
                  });}),
                ],
              ),
              body:Scrollbar(
                child: SingleChildScrollView(
                child: Column(
                  children:<Widget>[
                    Row(children: [
                      Container(
                        height:100.0,
                        width: 353.0,
                        child: Padding(
                          padding: EdgeInsets.only(top:20.0,left:10.0),
                          child: Text(
                            "Learn More About Care Plans",
                            style: TextStyle(
                              fontSize:25.0,
                              fontWeight:FontWeight.w600,
                              color:Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left:20.0)),
                    ],),
                    ListTile(
                      // onTap: (){
                      //   Navigator.of(context).pop("");
                      // },
                      title: new Text(
                        "Care Plans allow you to add variuos medicines that you are taking for your treatment in one place. Care Plans have an added benefit of being able to add reminders for various measuremnets or vitals that you may need to check-in periodically as well.",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:20.0,
                          fontWeight: FontWeight.w300
                        ),
                      ),

                    ),
                    Padding(padding: EdgeInsets.only(top:10.0)),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.of(context).popAndPushNamed("");
                      },
                      trailing: Icon(Icons.chevron_right,color: Colors.white,size: 25.0,),
                      title: new Text(
                        "What is the purpose of having a Care \nPlan?",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:18.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),

                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),
                    ListTile(
                      trailing: Icon(Icons.chevron_right,color: Colors.white,size: 25.0,),
                      onTap: (){
                        Navigator.of(context).popAndPushNamed("");
                      },
                      title: new Text(
                        "How do I create a new Care Plan?",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:18.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),
                    ListTile(
                      trailing: Icon(Icons.chevron_right,color: Colors.white,size: 25.0,),
                      onTap: (){
                        Navigator.of(context).popAndPushNamed("");
                      },
                      title: new Text(
                        "Why would I need multiple Care Plans?",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:18.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),
                    ListTile(
                      trailing: Icon(Icons.chevron_right,color: Colors.white,size: 25.0,),
                      onTap: (){
                        Navigator.of(context).popAndPushNamed("");
                      },
                      title: new Text(
                        "How do I view all Care Plans",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:18.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),

                  ],

            ),
                ),
              ),
        ),
          ),
      );
    });
  }

  void _onButtonPressed3(){
    showModalBottomSheet(context: context, 
    builder:(context){
      return Container(
        color: Colors.black,
        height: 1000.0,
          child: Container(
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius:BorderRadius.only(
              topLeft: const Radius.circular(30.0),
              topRight: const Radius.circular(30.0)
            )
          ),
          child:Scaffold(
              appBar: AppBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0))
                ),
                leading: Padding(
                padding: EdgeInsets.only(left:0)),
              title:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Emergency"),
                ],
              ),
              actions: <Widget>[
              Padding(padding: EdgeInsets.only(left:20.0)),
                  IconButton(icon: Icon(Icons.cancel,size: 30.0,color: Colors.white,), 
                  onPressed: (){setState(() {
                    Navigator.of(context).pop();
                  });}),
                ],
              ),
              body:Scrollbar(
                child: SingleChildScrollView(
                child: Column(
                  children:<Widget>[
                    Row(children: [
                      Container(
                        height:100.0,
                        width: 353.0,
                        child: Padding(
                          padding: EdgeInsets.only(top:20.0,left:10.0),
                          child: Text(
                            "Learn More About Emergency",
                            style: TextStyle(
                              fontSize:25.0,
                              fontWeight:FontWeight.w600,
                              color:Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left:20.0)),
                    ],),
                    ListTile(
                      // onTap: (){
                      //   Navigator.of(context).pop("");
                      // },
                      title: new Text(
                        "Emergency feature in the app allows you to make calls for police and ambulance directly from the app. Also distress messages can be sent with basic details and current location to people in Care Team.",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:20.0,
                          fontWeight: FontWeight.w300
                        ),
                      ),

                    ),
                    Padding(padding: EdgeInsets.only(top:10.0)),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.of(context).popAndPushNamed("");
                      },
                      trailing: Icon(Icons.chevron_right,color: Colors.white,size: 25.0,),
                      title: new Text(
                        "How to do I call Ambulance?",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:18.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),

                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),
                    ListTile(
                      trailing: Icon(Icons.chevron_right,color: Colors.white,size: 25.0,),
                      onTap: (){
                        Navigator.of(context).popAndPushNamed("");
                      },
                      title: new Text(
                        "How do I call Police?",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:18.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),
                    ListTile(
                      trailing: Icon(Icons.chevron_right,color: Colors.white,size: 25.0,),
                      onTap: (){
                        Navigator.of(context).popAndPushNamed("");
                      },
                      title: new Text(
                        "How to access SMS facility?",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:18.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),
                    ListTile(
                      trailing: Icon(Icons.chevron_right,color: Colors.white,size: 25.0,),
                      onTap: (){
                        Navigator.of(context).popAndPushNamed("");
                      },
                      title: new Text(
                        "How do I edit or view all people on Care Team?",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:18.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),

                  ],

            ),
                ),
              ),
        ),
          ),
      );
    });
  }

  
  void _onButtonPressed2(){
    showModalBottomSheet(context: context, 
    builder:(context){
      return Container(
        color: Colors.black,
        height: 300.0,
          child: Container(
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius:BorderRadius.only(
              topLeft: const Radius.circular(30.0),
              topRight: const Radius.circular(30.0)
            )
          ),
          child:Scaffold(
              appBar: AppBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0))
                ),
                leading: Padding(
                padding: EdgeInsets.only(left:0)),
              title:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Care Teams"),
                ],
              ),
              actions: <Widget>[
              Padding(padding: EdgeInsets.only(left:20.0)),
                  IconButton(icon: Icon(Icons.cancel,size: 30.0,color: Colors.white,), 
                  onPressed: (){setState(() {
                    Navigator.of(context).pop();
                  });}),
                ],
              ),
              body:Scrollbar(
                child: SingleChildScrollView(
                child: Column(
                  children:<Widget>[
                    Row(children: [
                      Container(
                        height:100.0,
                        width: 353.0,
                        child: Padding(
                          padding: EdgeInsets.only(top:20.0,left:10.0),
                          child: Text(
                            "Learn More About Care Teams",
                            style: TextStyle(
                              fontSize:25.0,
                              fontWeight:FontWeight.w600,
                              color:Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left:20.0)),
                    ],),
                    Padding(padding: EdgeInsets.only(top:10.0)),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.of(context).popAndPushNamed("");
                      },
                      trailing: Icon(Icons.chevron_right,color: Colors.white,size: 25.0,),
                      title: new Text(
                        "What is an Emergency Contact and how do I add one?",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:18.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),

                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1.0,
                      thickness: 1.0,
                    ),

                  ],

            ),
                ),
              ),
        ),
          ),
      );
    });
  }



}