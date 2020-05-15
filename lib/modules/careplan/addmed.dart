
import 'dart:math' as math;
import 'package:cliniccare/FAB2.dart';
import 'package:cliniccare/home.dart';
import 'package:cliniccare/modules/reminder/reminders.dart';
import 'package:cliniccare/modules/setting/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';



class addMedPage extends StatefulWidget {

addMedPage():super();
  

  @override
  _addMedPageState createState() => _addMedPageState();
}

class _addMedPageState extends State<addMedPage>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate1=false;
  String _name;
  var _quant;
  FocusNode _focusNode1;
  FocusNode _focusNode2;  

  String _date = "Choose your date";
  String _date1 = "Choose your date";
  String _time = "Choose your time";
  List<bool> isSelected = [false, false, false, false, false, false, false];


  void initState(){
    super.initState();
    _focusNode1 =FocusNode();
    _focusNode2 =FocusNode();    
  }

    @override
  void _requestFocus1(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode1);
    });
  }

  @override
  void _requestFocus2(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode2);
    });
  }
  
  @override
  void dispose1(){
    _focusNode1.dispose();
    super.dispose();
  }
  @override
    void dispose2(){
    _focusNode2.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return new Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FAB2(),
      floatingActionButtonLocation: _CustomStartTopFloatingActionButtonLocation(),
      appBar: MyAppbar(),
        body:Scrollbar(
          child: SingleChildScrollView(
            child: new Stack(
              children: <Widget>[
                new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Form(
                        key: _formKey,
                        autovalidate: _autoValidate1,
                        child: new Theme(
                          data:new ThemeData(
                              brightness: Brightness.dark,primarySwatch: Colors.teal,
                              inputDecorationTheme:new InputDecorationTheme(
                                  labelStyle:new TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  )) ),
                          child: new Container(
                            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                    child: new Container(
                                    height: 100.0,
                                    width: 400.0,
                                    child: new Text(
                                      " Add Reminder For Medicine",
                                      style: TextStyle(
                                        fontSize:30.0,
                                        fontWeight: FontWeight.w200,
                                        color:Colors.white
                                      ),
                                    )),
                                ),
                                new TextFormField(
                                  validator: validateName,
                                  autocorrect: true,
                                  onSaved: (String value){
                                    _name=value;
                                  },
                                  onFieldSubmitted: (v){
                                    FocusScope.of(context).requestFocus(_focusNode2);
                                  },
                                  onTap: _requestFocus1,
                                  focusNode: _focusNode1,
                                  textInputAction: TextInputAction.next,
                                  decoration: new InputDecoration(
                                      hintText: "Medicine Name",
                                      border: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(15.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                        ),
                                      ),
                                      enabledBorder: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(15.0),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),

                                      ),
                                  ),
                                  keyboardType:TextInputType.text,
                                ),
                                new Padding(padding: EdgeInsets.only(top:20.0)),
                                Container(
                                  width: 400.0,
                                  child: new TextFormField(
                                    validator: validateQuantity,
                                    autocorrect: true,
                                    autovalidate: _autoValidate1,
                                    onSaved: (value){
                                    _quant=value;
                                    },
                                    // onFieldSubmitted: (v){
                                    //   FocusScope.of(context).requestFocus(_focusNode2);
                                    // },
                                  onTap: _requestFocus2,
                                  focusNode: _focusNode2,
                                    decoration: new InputDecoration(
                                      hintText: "Dose Quantity",
                                      border: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(15.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                        ),
                                      ),
                                      enabledBorder: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(15.0),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    keyboardType:TextInputType.number,
                                  ),
                                ),
                                new Padding(padding: EdgeInsets.only(top:20.0)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    new Text(
                                      "Start Date",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        
                                      ),),
                                  ],
                                ),
                                new Padding(padding: EdgeInsets.only(top:10.0)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ButtonTheme(
                                      height: 60.0,
                                      minWidth: 370.0,
                                      child: RaisedButton(
                                        shape: (RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                        )),
                                        elevation: 4.0,
                                        onPressed: (){
                                          DatePicker.showDatePicker(context,
                                          theme: DatePickerTheme(
                                            containerHeight: 315.0,
                                            itemStyle: const TextStyle(color: Colors.black),
                                            backgroundColor: Colors.white,
                                            headerColor: Colors.white,
                                            doneStyle: const TextStyle(color: Colors.blue),
                                            cancelStyle: const TextStyle(color: Colors.black),
                                          ),
                                            showTitleActions: true,
                                            minTime: DateTime(2000,1,1),
                                            maxTime: DateTime(2030,12,31), onConfirm: (date){
                                            print("Confirm $date");
                                            _date = '${date.year} - ${date.month} - ${date.day}';
                                            setState(() {});
                                            }, currentTime: DateTime.now(), locale : LocaleType.en);
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 50.0,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Row(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(
                                                            Icons.date_range,
                                                            size: 25.0,
                                                            color: Colors.white,

                                                          ),
                                                          Padding(padding: EdgeInsets.only(left: 20.0)),
                                                          Text(
                                                            "$_date",
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.w300,
                                                              fontSize: 18.0,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.only(left: 85.0)),
                                                Text(
                                                  "Change",
                                                    style:TextStyle(
                                                      color:Colors.white,
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.w300
                                                    )
                                                )
                                              ],
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                new Padding(padding: EdgeInsets.only(top:20.0)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    new Text(
                                      "End Date",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                      ),),
                                  ],
                                ),
                                new Padding(padding: EdgeInsets.only(top:10.0)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ButtonTheme(
                                      height: 60.0,
                                      minWidth: 370.0,
                                      child: RaisedButton(
                                          shape: (RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          )),
                                          elevation: 4.0,
                                          onPressed: (){
                                            DatePicker.showDatePicker(context,
                                                  theme: DatePickerTheme(
                                                    containerHeight: 315.0,
                                                    itemStyle: const TextStyle(color: Colors.black),
                                                    backgroundColor: Colors.white,
                                                    headerColor: Colors.white,
                                                    doneStyle: const TextStyle(color: Colors.blue),
                                                    cancelStyle: const TextStyle(color: Colors.black),
                                                ),
                                                showTitleActions: true,
                                                minTime: DateTime(2000,1,1),
                                                maxTime: DateTime(2030,12,31), onConfirm: (date){
                                                  print("Confirm $date");
                                                  _date1 = '${date.year} - ${date.month} - ${date.day}';
                                                  setState(() {});
                                                }, currentTime: DateTime.now(), locale : LocaleType.en);
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 50.0,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Row(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(
                                                            Icons.date_range,
                                                            size: 25.0,
                                                            color: Colors.white,

                                                          ),
                                                          Padding(padding: EdgeInsets.only(left: 20.0)),
                                                          Text(
                                                            "$_date1",
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.w300,
                                                              fontSize: 18.0,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.only(left: 85.0)),
                                                Text(
                                                    "Change",
                                                    style:TextStyle(
                                                      color:Colors.white,
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.w300
                                                    )
                                                )
                                              ],
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(top: 20.0) ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    new Text(
                                      "Reminder Time",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                      ),),
                                  ],
                                ),
                                new Padding(padding: EdgeInsets.only(top:10.0)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ButtonTheme(
                                      height: 60.0,
                                      minWidth: 370.0,
                                      child: RaisedButton(
                                          shape: (RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          )),
                                          elevation: 4.0,
                                          onPressed: (){
                                            DatePicker.showTimePicker(context,
                                                theme: DatePickerTheme(
                                                  containerHeight: 315.0,
                                                  itemStyle: const TextStyle(color: Colors.black),
                                                  backgroundColor: Colors.white,
                                                  headerColor: Colors.white,
                                                  doneStyle: const TextStyle(color: Colors.blue),
                                                  cancelStyle: const TextStyle(color: Colors.black),
                                                ),
                                                showTitleActions: true,
                                                onConfirm: (time){
                                                  print("Confirm $time");
                                                  _time = '${time.hour}:${time.minute}:${time.second}';
                                                  setState(() {});
                                                }, currentTime: DateTime.now(), locale : LocaleType.en);
                                            setState(() {});
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 50.0,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Row(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(
                                                            Icons.access_time,
                                                            size: 25.0,
                                                            color: Colors.white,

                                                          ),
                                                          Padding(padding: EdgeInsets.only(left: 20.0)),
                                                          Text(
                                                            "$_time",
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.w300,
                                                              fontSize: 18.0,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.only(left: 85.0)),
                                                Text(
                                                    "Change",
                                                    style:TextStyle(
                                                      color:Colors.white,
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.w300
                                                    )
                                                )
                                              ],
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(top: 20.0) ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    new Text(
                                      "Reminder Days",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        
                                      ),),
                                  ],
                                ),
                                new Padding(padding: EdgeInsets.only(top:10.0)),
                                ToggleButtons(
                                  color:Colors.white,
                                  //highlightColor: Colors.red,
                                  selectedColor: Colors.teal,
                                  splashColor: Colors.blueAccent,
                                  borderColor: Colors.white,
                                  borderWidth: 3,
                                  selectedBorderColor: Colors.teal,
                                  //renderBorder: true,
                                  children: <Widget>[
                                    Text("M",style: TextStyle(fontWeight: FontWeight.w300),),
                                    Text("T",style: TextStyle(fontWeight: FontWeight.w300),),
                                    Text("W",style: TextStyle(fontWeight: FontWeight.w300),),
                                    Text("T",style: TextStyle(fontWeight: FontWeight.w300),),
                                    Text("F",style: TextStyle(fontWeight: FontWeight.w300),),
                                    Text("S",style: TextStyle(fontWeight: FontWeight.w300),),
                                    Text("S",style: TextStyle(fontWeight: FontWeight.w300),),
                                  ],
                                  isSelected: isSelected,
                                  onPressed: (int index){
                                    setState(() {
                                      isSelected[index] = !isSelected[index];
                                    });
                                  },
                                ),
                                new Padding(padding: EdgeInsets.only(top:100.0)),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 70.0,
                                    width: 500.0,
                                    child: MaterialButton(
                                      height: 50.0,
                                      minWidth: 70.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0),
                                        side: BorderSide(color: Colors.white10),
                                      ),
                                      color:Colors.teal,
                                      textColor: Colors.white,
                                      child: new Text(
                                        "Submit",
                                        style: TextStyle(
                                          color:Colors.white,
                                          fontSize:20.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        ),
                                      onPressed: _validateInputs,
                                      splashColor: Colors.white70,
                                    ),
                                  ),
                                )
                              ])
                        )
                      )
                      )],
                ),

              ]
            ),
          ),
        ),
    );
  }
  void _validateInputs(){
    if (_formKey.currentState.validate()){
      _formKey.currentState.save();
      Navigator.of(context).pushNamed("/careplan");
    }
    else{
      setState(() {
        _autoValidate1=true;
      });
    }
  }
}




String validateQuantity(var value){
  if(value.length<1)
    return 'Quantity shouldn\'t be empty';
  else if (double.parse(value)==0)
    return 'Enter valid quantity';
  else 
    return null; 
}
String validateName(String value){
  if(value.length<3)
    return 'Name must be more than 2 characters';
  else 
    return null;
}



//////custom location FAB
double _endOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = -160.0 }) {
  assert(scaffoldGeometry.textDirection != null);
  switch (scaffoldGeometry.textDirection) {
    case TextDirection.rtl:
      return _leftOffset(scaffoldGeometry, offset: offset);
    case TextDirection.ltr:
      return _rightOffset(scaffoldGeometry, offset: offset);
  }
  return null;
}
double _leftOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = 50.0 }) {
  return kFloatingActionButtonMargin
      + scaffoldGeometry.minInsets.left
      - offset;
}

double _rightOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = 50.0 }) {
  return scaffoldGeometry.scaffoldSize.width
      - kFloatingActionButtonMargin
      - scaffoldGeometry.minInsets.right
      - scaffoldGeometry.floatingActionButtonSize.width
      + offset;
}

double _straddleAppBar(ScaffoldPrelayoutGeometry scaffoldGeometry) {
  final double fabHalfHeight = scaffoldGeometry.floatingActionButtonSize.height / 2.0;
  return scaffoldGeometry.contentTop - fabHalfHeight;
}


////////////////////////////CUSTOM FAB
class _CustomStartTopFloatingActionButtonLocation extends FloatingActionButtonLocation {
  const _CustomStartTopFloatingActionButtonLocation();

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    return Offset(_endOffset(scaffoldGeometry), _straddleAppBar(scaffoldGeometry));
  }

  @override
  String toString() => 'FloatingActionButtonLocation.customstartTop';
}

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  const MyAppbar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 26.0,
      color: Colors.teal,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.yellow,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: title,
      ),
    );
  }

  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}