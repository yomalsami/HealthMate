
import 'package:cliniccare/home.dart';
import 'package:cliniccare/modules/careplan/addmeasure.dart';
import 'package:cliniccare/modules/careplan/homecare.dart';
import 'package:cliniccare/modules/login/splash.dart';
import 'package:cliniccare/modules/reminder/reminders.dart';
import 'package:cliniccare/modules/setting/mycareteam.dart';
import 'package:cliniccare/modules/setting/privacypolicy.dart';
import 'package:cliniccare/modules/setting/setting.dart';
import 'package:flutter/material.dart';
import 'modules/careplan/addact.dart';
import 'modules/careplan/addmed.dart';
import 'modules/careplan/addmed.dart';
import 'modules/emergency/editProfile.dart';
import 'modules/emergency/emergency.dart';
import 'modules/login/login_email.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:async';
import 'modules/setting/editEmergencyContact.dart';
import 'modules/setting/resources.dart';
import 'modules/signup/signup.dart';
//import 'file:///F:/Flutter%20Projects/cliniccare/lib/splash.dart';



void main() {
  runApp(MyApp());


}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {




  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splashPage(),
        routes: <String,WidgetBuilder>{
          '/vital':(_) =>new vitalHomePage(),
          '/login':(_) =>new LoginPage(),
          '/reminders':(_) =>new ReminderPage(),
          '/careplan':(_) =>new carePlanPage(),
          '/addmed': (_) =>new addMedPage(),
          '/addact': (_) =>new addActPage(),
          '/home': (_) =>new HomePage(),
          '/emergency':(_)=> new emergencyPage(),
          '/editProfile':(_)=> new editProfile(),
          '/editemergency':(_)=> new editEmergency(),
          '/editemergency1':(_)=> new editEmergency1(),
          '/setting':(_)=>new Settings(),
          '/privacy':(_)=>new privacyPage(),
          '/careteam':(_)=>new careTeam(),
          '/resources':(_)=>new resources(),
        },
        theme:new ThemeData(
          scaffoldBackgroundColor: Colors.black,
          backgroundColor: Colors.black,
          primarySwatch: Colors.teal,

      )
    );
  }
}

