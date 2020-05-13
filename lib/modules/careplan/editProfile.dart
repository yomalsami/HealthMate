import 'package:flutter/material.dart';

enum Gender{Male,Female,Others}

class editProfile extends StatefulWidget {
  editProfile({Key key}) : super(key: key);
  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {

  bool isSwitched = false;
  FocusNode _focusNode1;
  FocusNode _focusNode2;
  FocusNode _focusNode3;
  Gender _gender= Gender.Male;

  @override
  void initState(){
    super.initState();
    _focusNode1 =FocusNode();
    _focusNode2 =FocusNode();
    _focusNode3 =FocusNode();
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
  void _requestFocus3(){
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
  void dispose3(){
    _focusNode1.dispose();
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
                Navigator.of(context).pushNamed('/emergency');
              },

            )),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Edit Profile"),
          ],
        ),
        actions: <Widget>[
          Padding(padding: EdgeInsets.only(left:50.0))
        ],
        ),
        body: SingleChildScrollView(child: Column(
          children:<Widget>[
            Padding(padding: EdgeInsets.only(top:20.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Container(
                  height: 100.0,
                  width: 400.0,
                  child: Card(
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.redAccent,
                    child: Column(
                      children:<Widget>[
                        ListTile(  
                          title: new Text(
                            "Keep HealthPlus Emergency Widget \non Your Phone's Lock Screen?",
                            style: TextStyle(
                              color:Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                            trailing: Switch(
                              value: isSwitched,
                              activeColor: Colors.white,
                              autofocus: true,
                              onChanged: (value){
                                setState(() {
                                  isSwitched=value;
                                  print(isSwitched);
                                });
                              },
                            ),
                            
                          )
                      ]
                    ),

                  ),

                ),
              ],
            ),
            Divider(
              height:10.0,
              thickness: 2.0,
              color: Colors.grey,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left:10.0) ),
                new Text(
                  "Fill in your details below",
                  style: TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize:20.0,
                  )
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top:10.0),),
            new Form(
              child:Theme(
                      data:new ThemeData(
                          inputDecorationTheme:new InputDecorationTheme(
                              labelStyle:new TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                              )) ),
              child: Column(
              children:<Widget>[
                new TextFormField(
                  onFieldSubmitted: (v){
                    FocusScope.of(context).requestFocus(_focusNode2);
                  },
                  textInputAction: TextInputAction.next,
                  focusNode: _focusNode1,
                  onTap: _requestFocus1,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                  return null;},
                  decoration: new InputDecoration(
                    labelText: "Your Name",
                    border: new OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color:Colors.blue,
                    ),
                    ),
                    labelStyle: TextStyle(
                      color:_focusNode1.hasFocus ? Colors.blue : Colors.black),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:BorderSide(color: Colors.black)
                    )
                  ),
                  keyboardType:TextInputType.text,
                  
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                new TextFormField(
                  onFieldSubmitted: (v){
                    FocusScope.of(context).requestFocus(_focusNode3);
                  },
                  textInputAction: TextInputAction.next,
                  focusNode: _focusNode2,
                  onTap: _requestFocus2,
                  decoration: new InputDecoration(
                    labelText: "Height(Optional)",
                    suffixText: "cms",
                    border: new OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color:Colors.blue,
                    ),
                    ),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:BorderSide(color: Colors.black)
                    ),
                    labelStyle: TextStyle(
                      color:_focusNode2.hasFocus ? Colors.blue : Colors.black),
                  ),
                  keyboardType:TextInputType.number,
                  
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                new TextFormField(
                  // onFieldSubmitted: (v){
                  //   FocusScope.of(context).requestFocus(_focusNode2);
                  // },
                  textInputAction: TextInputAction.done,
                  focusNode: _focusNode3,
                  onTap: _requestFocus3, 
                  decoration: new InputDecoration(
                    labelText: "Weight(optional)",
                    border: new OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color:Colors.blue,
                    ),
                    ),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:BorderSide(color: Colors.black)
                    ),
                    labelStyle: TextStyle(
                      color:_focusNode3.hasFocus ? Colors.blue : Colors.black),
                  ),
                  keyboardType:TextInputType.number,
                ),
              ],
            ),
            ),)      
          ]
        ),),
    );
  }
}