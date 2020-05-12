import 'package:cliniccare/FAB1.dart';
import 'package:cliniccare/modules/reminder/reminders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cliniccare/modules/setting/setting.dart';
import 'package:call_number/call_number.dart';
import 'modules/careplan/homecare.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final TextEditingController _controller = new TextEditingController();

  @override
  initState() {
    super.initState();
  }

  _initCall() async {
    CallNumber().callNumber("7043291668");
    // if(_controller.text != null)
    //   await new CallNumber().callNumber('+91' + _controller.text);
  }

  int currentTab = 0;
  final List<Widget> screens=[
    ReminderPage(),
    Settings(),
    carePlanPage(),
  ];

  Widget currentScreen = ReminderPage();
  final PageStorageBucket bucket =PageStorageBucket();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
//      Floating Action button
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      floatingActionButton:FloatingActionButton(

      backgroundColor: Colors.red,
      child: const Icon(
        Icons.call,
        color: Colors.white,

      ),
      onPressed: _initCall,
    ),
//      BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomAppBar(
        shape:CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  MaterialButton(
                    minWidth:40,
                    onPressed: (){
                      setState(() {
                        currentScreen= ReminderPage();
                        currentTab=0;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.alarm,
                          color:currentTab == 0 ? Colors.teal : Colors.black,
                        ),
                        Text(
                          'Reminders',
                          style: TextStyle(
                            color:currentTab == 0 ? Colors.teal : Colors.black,
                          ),
                        )
                      ],
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 220),
                  ),
                  MaterialButton(
                    minWidth:40,
                    onPressed: (){
                      setState(() {
                        currentScreen= carePlanPage();
                        currentTab=1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.book,
                          color:currentTab == 1 ? Colors.teal : Colors.black,
                        ),
                        Text(
                          'Careplan',
                          style: TextStyle(
                            color:currentTab == 1 ? Colors.teal : Colors.black,
                          ),
                        )
                      ],
                    ),

                  )
                ],
              )
            ],
          ) ,

        ),
      ),
    );
  }
}

