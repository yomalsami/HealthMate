import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:share/share.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            Text("Settings"),
          ],
        ),
        actions: <Widget>[
          Padding(padding: EdgeInsets.only(left:50.0))
        ],
        ),

        body:SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:30.0),
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
                margin:const EdgeInsets.all(8.0),
                color:Colors.teal,
                child:Column(
                  children: <Widget>[
                    ListTile(
                      onTap:(){
                        setState(() {
                          Navigator.of(context).pushNamed("/careteam");
                        });
                      },
                      leading: Icon(
                        LineAwesomeIcons.users,
                        color: Colors.white,
                        size:30.0
                      ),
                      title:Text("My Care Team",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize: 20.0)),
                      trailing: Icon(
                        LineAwesomeIcons.arrow_right,
                        color:Colors.white,
                        size: 30.0,
                      ),
                    ),
                    Divider(
                      height:10.0,
                      thickness: 5.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap:(){},
                      leading: Icon(
                        Icons.book,
                        color: Colors.white,
                        size:30.0
                      ),
                      trailing: Icon(
                        LineAwesomeIcons.arrow_right,
                        color:Colors.white,
                        size: 30.0,
                      ),
                      title:Text("My Care Plan",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize: 20.0)),
                    )
                    
                  ],
                )
              ),
              // SizedBox(
              //   height:10.0,
              //   width:200.0,
              // ),
              Card(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
                margin:const EdgeInsets.all(8.0),
                color:Colors.teal,
                child:Column(
                  children: [
                    // ListTile(
                    //   onTap:(){},
                    //   title:Text("Health Integrations",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400)),
                    // ),
                    // Divider(
                    //   height:10.0,
                    //   thickness: 5.0,
                    //   color: Colors.black,
                    // ),
                    ListTile(
                      onTap:(){},
                      leading: Icon(
                        LineAwesomeIcons.cog,
                        color: Colors.white,
                        size:30.0
                      ),
                      
                      title:Text("User Settings",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize: 20.0)),
                    ),
                    Divider(
                      height:10.0,
                      thickness: 5.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap:(){
                        setState(() {
                          Navigator.of(context).pushNamed("/resources");
                        });
                      },
                      leading: Icon(
                        LineAwesomeIcons.info,
                        color: Colors.white,
                        size:30.0
                      ),
                      title:Text("Resource Center",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize: 20.0)),
                    ),
                    Divider(
                      height:10.0,
                      thickness: 5.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap:(){
                        Share.share('Check out this cool new app!');
                      },
                      leading: Icon(
                        LineAwesomeIcons.share_alt,
                        color: Colors.white,
                        size:30.0
                      ),
                      title:Text("Share App with Friends",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize: 20.0)),
                    ),

                  ],
                )
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
                margin:const EdgeInsets.all(8.0),
                color:Colors.teal,
                child:Column(
                  children: [
                    ListTile(
                      onTap:(){
                        setState(() {
                          Navigator.of(context).pushNamed("/privacy");
                        });
                      },
                      leading: Icon(
                        LineAwesomeIcons.shield,
                        color: Colors.white,
                        size:30.0
                      ),
                      title:Text("Privacy Policy",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize: 20.0)),
                    ),
                    Divider(
                      height:10.0,
                      thickness: 5.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap:(){
                        Navigator.of(context).pushNamed('/privacy');
                      },
                      leading: Icon(
                        LineAwesomeIcons.play,
                        color: Colors.white,
                        size:30.0
                      ),
                      trailing: Text("1.0",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize: 20.0)),
                      title:Text("App Version",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize: 20.0)),
                    ),
                  ],
                )
              ),
              SizedBox(
                height:50.0,
                width:200.0,
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
                margin:const EdgeInsets.all(8.0),
                color:Colors.teal,
                child:ListTile(
                  onTap:(){},
                  leading: Icon(
                        LineAwesomeIcons.sign_out,
                        color: Colors.white,
                        size:30.0
                      ),
                  title:Text("Logout",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize: 20.0)),
                )
              ),
            ],
          ),
        )
      );
  }
}
