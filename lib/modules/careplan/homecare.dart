import 'package:cliniccare/modules/setting/setting.dart';
import 'package:flutter/material.dart';

class carePlanPage extends StatefulWidget {
  @override
  _carePlanPageState createState() => _carePlanPageState();
}

class _carePlanPageState extends State<carePlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(left:10),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},

            )),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Edit CarePlan"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white,size: 30.0,),
            onPressed: (){
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()));
              });
            },
          ),
        ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children:<Widget>[
              Padding(padding: EdgeInsets.only(top:200.0)),
              new Stack(
                children: <Widget>[
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left:10.0),),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: [
                          new MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('/addmed');
                              },
                              height: 75.0,
                              minWidth: 390.0,
                              textColor: Colors.white,
                              child: Text(
                                "Add Medicines",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                              color: Colors.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                                ),
                              ),
                          Padding(padding: EdgeInsets.only(top:20.0),),    
                          new MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('/addact');
                              },
                              height: 75.0,
                              minWidth: 390.0,
                              color: Colors.teal,
                              textColor: Colors.white,
                              child: Text(
                                "Add Activities",
                                style: TextStyle(
                                  fontSize: 20.0,

                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                                ),
                              ),
                          Padding(padding: EdgeInsets.only(top:20.0),),    
                          new MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('/vital');
                              },
                              height: 75.0,
                              minWidth: 390.0,
                              color: Colors.teal,
                              textColor: Colors.white,
                              child: Text(
                                "Vitals Check",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                                ),
                              ),
                          Padding(padding: EdgeInsets.only(top:10.0),),    
                          // new MaterialButton(
                          //     onPressed: (){},
                          //     height: 75.0,
                          //     minWidth: 390.0,
                          //     color: Colors.teal,
                          //     textColor: Colors.white,
                          //     child: Text(
                          //       "Add Medicines",
                          //       style: TextStyle(
                          //         fontSize: 20.0,

                          //       ),
                          //     ),
                          //     shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20.0)
                          //       ),
                          //     ),        
                              
                        ],
                      ),
                    ],
                  ),
                    ],
                  )
                ],
              )
            
          ),
        );

      
  }
}