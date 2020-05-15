
import 'package:cliniccare/home.dart';
import 'package:cliniccare/modules/careplan/addmeasure.dart';
import 'package:cliniccare/modules/careplan/homecare.dart';
import 'package:cliniccare/modules/reminder/reminders.dart';
import 'package:cliniccare/modules/setting/setting.dart';
import 'package:cliniccare/splash.dart';
import 'package:flutter/material.dart';
import 'modules/careplan/addact.dart';
import 'modules/careplan/addmed.dart';
import 'modules/careplan/addmed.dart';
import 'modules/emergency/editProfile.dart';
import 'modules/emergency/emergency.dart';
import 'modules/login/login_email.dart';

import 'modules/signup/signup.dart';
//import 'file:///F:/Flutter%20Projects/cliniccare/lib/splash.dart';



void main() {
  runApp(MyApp());


}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: <String,WidgetBuilder>{
          '/vital':(_) =>new vitalHomePage(),
          '/login':(_) =>new LoginPage(),
          '/reminders':(_) =>new ReminderPage(),
          '/careplan':(_) =>new carePlanPage(),
          '/addmed': (_) =>new addMedPage(),
          '/addact': (_) =>new addMedPage(),
          '/home': (_) =>new HomePage(),
          '/emergency':(_)=> new emergencyPage(),
          '/editProfile':(_)=> new editProfile(),
          '/editemergency':(_)=> new editEmergency(),
        },
        theme:new ThemeData(
          scaffoldBackgroundColor: Colors.black,
          backgroundColor: Colors.black,
          primarySwatch: Colors.teal,

      )
    );
  }
}

