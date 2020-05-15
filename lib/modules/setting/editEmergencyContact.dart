import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:gender_selection/gender_selection.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class editEmergency1 extends StatefulWidget {
  @override

  editEmergency1({Key key}) : super(key: key);

  _editEmergency1State createState() => _editEmergency1State();
}

class _editEmergency1State extends State<editEmergency1> {
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey3 = GlobalKey<FormState>();
  bool _autoValidate2=false;
  bool _autoValidate3=false;
  String _name;
  String _mobile;


  FocusNode _focusNode4;
  FocusNode _focusNode5;
  FocusNode _focusNode6;
  FocusNode _focusNode7;
  FocusNode _focusNode8;
  FocusNode _focusNode9;
  bool isSwitched = false;

    @override
  void initState(){
    super.initState();
    _focusNode4 =FocusNode();
    _focusNode5 =FocusNode();
    _focusNode6 =FocusNode();
    _focusNode7 =FocusNode();
    _focusNode8 =FocusNode();
    _focusNode9 =FocusNode();

    
  }


  @override
  void _requestFocus4(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode4);
    });
  }

  @override
  void _requestFocus5(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode5);
    });
  }

    @override
  void _requestFocus6(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode6);
    });
  }



  @override
  void _requestFocus7(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode7);
    });
  }


    @override
    void dispose4(){
    _focusNode4.dispose();
    super.dispose();
  }
  @override
    void dispose5(){
    _focusNode5.dispose();
    super.dispose();
  }
  @override
    void dispose6(){
    _focusNode6.dispose();
    super.dispose();
  }
@override
    void dispose7(){
    _focusNode7.dispose();
    super.dispose();
  }
  @override
    void dispose8(){
    _focusNode8.dispose();
    super.dispose();
  }
  @override
    void dispose9(){
    _focusNode9.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Padding(
            padding: EdgeInsets.only(left:10),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.of(context).pushNamed('/careteam');
              },

            )),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Edit Profile"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              setState(() {
                Navigator.of(context).pushNamed("/home");
              });
            },
            icon: Icon(LineAwesomeIcons.home, color: Colors.white,size: 30.0,),
          ),
        ],
        ),
        body: SingleChildScrollView(
          child: Column(
          children:<Widget>[
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
                        "Emergency Contact 1*",
                        style:TextStyle(
                          color:Colors.black,
                          fontSize:20.0,
                          fontWeight:FontWeight.w400,
                        )
                      )
                    ),
                    Form(
                      key: _formKey2,
                      autovalidate: _autoValidate2,
                      child: Theme(
                        data: new ThemeData(
                          inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                              color:Colors.black,
                              fontSize: 25.0,
                            )
                          )
                        ),
                        child: Column(children: [
                          Container(
                            width: 380.0,
                            child: new TextFormField(
                              validator: validateName,
                              onSaved: (String val){
                                _name = val;
                              },
                              autocorrect: true,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode5);
                              },
                              textInputAction: TextInputAction.next,
                              focusNode: _focusNode4,
                              onTap: _requestFocus4,
                              // validator: (value){
                              //   if (value.isEmpty){
                              //     return "Please enter some text";
                              //   }
                              //   return null;
                              // },
                              decoration: new InputDecoration(
                                labelText: "Name of Contact",
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color:Colors.red,
                                  ),
                                  ),
                                labelStyle: TextStyle(
                                  color:_focusNode4.hasFocus ? Colors.red : Colors.black),
                                enabledBorder: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:BorderSide(color: Colors.black)
                                )
                                ),
                                keyboardType: TextInputType.text,  
                              ),
                          ),
                            Padding(padding: EdgeInsets.only(top:20.0)),
                            Container(
                              width: 380,
                              child: new TextFormField(
                              // onFieldSubmitted:(v){
                              //   FocusScope.of(context).requestFocus(_focusNode5);
                              // },
                              textInputAction: TextInputAction.done,
                              focusNode: _focusNode5,
                              onTap: _requestFocus5,
                              validator: validateMobile,
                              onSaved: (String val){
                                _mobile=val;
                              },
                              decoration: new InputDecoration(
                                labelText: "Phone Number of Contact",
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color:Colors.red,
                                  ),
                                  ),
                                labelStyle: TextStyle(
                                  color:_focusNode5.hasFocus ? Colors.red : Colors.black),
                                enabledBorder: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:BorderSide(color: Colors.black)
                                )
                                ),
                                keyboardType: TextInputType.number,  
                              ),
                            ),

                          
                        ],)),
                    ),
                    ],
                )
                ),
            ),
            Padding(padding: EdgeInsets.only(top:20.0)),
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
                        "Emergency Contact 2*",
                        style:TextStyle(
                          color:Colors.black,
                          fontSize:20.0,
                          fontWeight:FontWeight.w400,
                        )
                      )
                    ),
                    Form(
                      key: _formKey3,
                      autovalidate: _autoValidate3,
                      child: Theme(
                        data: new ThemeData(
                          inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                              color:Colors.black,
                              fontSize: 25.0,
                            )
                          )
                        ),
                        child: Column(children: [
                          Container(
                            width: 380.0,
                            child: new TextFormField(
                              validator: validateName,
                              onSaved: (String val){
                                _name=val;
                              },
                              autocorrect: true,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode7);
                              },
                              textInputAction: TextInputAction.next,
                              focusNode: _focusNode6,
                              onTap: _requestFocus6,
                              decoration: new InputDecoration(
                                labelText: "Name of Contact",
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color:Colors.red,
                                  ),
                                  ),
                                labelStyle: TextStyle(
                                  color:_focusNode6.hasFocus ? Colors.red : Colors.black),
                                enabledBorder: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:BorderSide(color: Colors.black)
                                )
                                ),
                                keyboardType: TextInputType.text,  
                              ),
                          ),
                            Padding(padding: EdgeInsets.only(top:20.0)),
                            Container(
                              width: 380,
                              child: new TextFormField(
                              validator: validateMobile,
                              onSaved: (String val){
                                _mobile=val;
                              },
                              textInputAction: TextInputAction.done,
                              focusNode: _focusNode7,
                              onTap: _requestFocus7,
                              decoration: new InputDecoration(
                                labelText: "Phone Number of Contact",
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color:Colors.red,
                                  ),
                                  ),
                                labelStyle: TextStyle(
                                  color:_focusNode7.hasFocus ? Colors.red : Colors.black),
                                enabledBorder: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:BorderSide(color: Colors.black)
                                )
                                ),
                                keyboardType: TextInputType.number,  
                              ),
                            ),

                          
                        ],)),
                    ),
                    ],
                )
                ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50.0,
                    width: 400.0,
                    child: RaisedButton(
                      onPressed: _validateInputs,
                      elevation: 16.0,
                      splashColor: Colors.white10,
                      child: new Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.redAccent,
                      ),
                  ))
    ]
    )));
  }

  void _validateInputs(){
    if (_formKey2.currentState.validate()){
      if(_formKey3.currentState.validate()){
      _formKey2.currentState.save();
      _formKey3.currentState.save();
      Navigator.of(context).pushNamed("/careteam");
    }
    else{
      setState(() {
        _autoValidate3=true;
      });
    }
    }
    else {
      setState(() {
        _autoValidate2= true;
        _autoValidate3=true;
      });
    }
  }

  
}



String validateName(String value){
  if(value.length<3)
    return 'Name must be more than 2 characters';
  else 
    return null;
}

String validateMobile(String value){
  String pattern= r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp=new RegExp(pattern);
  if(value.length==0){
    return 'Please enter Mobile Number';
  }
  else if(!regExp.hasMatch(value)){
    return 'Please enter valid mobile number';
  }
  return null;
}
