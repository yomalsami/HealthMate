import'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cliniccare/FAB2.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../../home.dart';

class vitalHomePage extends StatefulWidget {
  @override
  _vitalHomePageState createState() => _vitalHomePageState();
}

class _vitalHomePageState extends State<vitalHomePage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate1=false;
  var _sys;
  var _dia;
  FocusNode _focusNode1;
  FocusNode _focusNode2;

  @override
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
    var _value;
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FAB2(),
      floatingActionButtonLocation: _CustomStartTopFloatingActionButtonLocation(),
      appBar: MyAppbar(),
      body: Scrollbar(
              child: SingleChildScrollView(
            child:new Column(
            children: <Widget>[
              new Padding(padding: EdgeInsets.only(top: 30.0)),
              Align(
                alignment: Alignment.center,
                child: new Container(
                  height: 100.0,
                  width: 400.0,
                  child: new Text(
                    "  Add Details for Vitals",
                    style: TextStyle(
                      fontSize:40.0,
                      color:Colors.white,
                      fontWeight:FontWeight.w200,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10.0)),
              Container(
                child: Column(
                  children: <Widget>[
                    new Form(
                      key: _formKey,
                      autovalidate:_autoValidate1,
                      child:Theme(
                        data:new ThemeData(
                            brightness: Brightness.dark,primarySwatch: Colors.teal,
                            inputDecorationTheme:new InputDecorationTheme(
                                labelStyle:new TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20.0,
                                )) ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70.0,
                              width: 390.0,
                              child: new TextFormField(
                                validator: validate,
                                onSaved: (value){
                                  _sys=value;
                                },
                                onFieldSubmitted: (v){
                                  FocusScope.of(context).requestFocus(_focusNode2);
                                },
                                textInputAction: TextInputAction.next,
                                focusNode: _focusNode1,
                                onTap: _requestFocus1,
                                decoration: new InputDecoration(
                                    labelText: "Systolic Pressure",
                                    hintText: "Enter the systolic pressure here",
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    labelStyle: TextStyle(
                                        color:_focusNode1.hasFocus ? Colors.blue : Colors.white)
                                ),
                                keyboardType:TextInputType.number,
                              ),
                            ),
                            new Padding(padding: EdgeInsets.only(top:20.0)),
                            Container(
                              height: 70.0,
                              width: 390.0,
                              child: new TextFormField(
                                validator: validate,
                                onSaved: (value){
                                  _dia=value;
                                },
                                textInputAction: TextInputAction.done,
                                focusNode: _focusNode2,
                                onTap: _requestFocus2,
                                decoration: new InputDecoration(
                                    labelText: "Diastolic Pressure",
                                    hintText: "Enter the systolic pressure here",
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    labelStyle: TextStyle(
                                        color:_focusNode2.hasFocus ? Colors.blue : Colors.white)
                                ),
                                keyboardType:TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10.0)),            
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left:10.0)),
                    Text(
                    "Mood",
                    textAlign: TextAlign.start,
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,

                    )
                  ),]
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10.0)),
              new Stack(
                children: [
                  Padding(padding: EdgeInsets.only(top:30.0)),
                  SliderWidget(),
                ],
              ),
              Padding(padding: EdgeInsets.only(top:10.0)),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left:10.0)),
                      Text(
                          "Pain",
                          textAlign: TextAlign.start,
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,

                          )
                      ),]
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10.0)),
              new Stack(
                children: [
                  Padding(padding: EdgeInsets.only(top:30.0)),
                  SliderWidget(),
                ],
              ),Padding(padding: EdgeInsets.only(top:10.0)),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left:10.0)),
                      Text(
                          "Energy",
                          textAlign: TextAlign.start,
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,

                          )
                      ),]
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10.0)),
              new Stack(
                children: [
                  Padding(padding: EdgeInsets.only(top:30.0)),
                  SliderWidget(),
                ],
              ),
              Padding(padding: EdgeInsets.only(top:10.0)),            
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left:10.0)),
                      Text(
                          "Attention",
                          textAlign: TextAlign.start,
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          )
                      ),]
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10.0)),
              new Stack(
                children: [
                  Padding(padding: EdgeInsets.only(top:30.0)),
                  SliderWidget(),
                ],
              ),
              new Padding(padding: EdgeInsets.only(top:30.0)),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 60.0,
                  width: 400.0,
                  child: MaterialButton(
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
              ],
          )
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

String validate(var value){
  if(value.length<1)
    return 'Quantity shouldn\'t be empty';
  else if (double.parse(value)==0)
    return 'Enter valid quantity';
  else 
    return null; 
}



class SliderWidget extends StatefulWidget {
  final double sliderHeight;
  final int min;
  final int max;
  final fullWidth;

  SliderWidget(
      {this.sliderHeight = 48,
        this.max = 10,
        this.min = 0,
        this.fullWidth = false});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    double paddingFactor = .2;

    if (this.widget.fullWidth) paddingFactor = .3;

    return Container(
      width: this.widget.fullWidth
          ? double.infinity
          : (this.widget.sliderHeight) * 8.0,
      height: (this.widget.sliderHeight),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all(
          Radius.circular((this.widget.sliderHeight * .3)),
        ),
        gradient: new LinearGradient(
            colors: [
              const Color(0xFFFFB302),
              const Color(0xFFFFB302),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.00),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(this.widget.sliderHeight * paddingFactor,
            2, this.widget.sliderHeight * paddingFactor, 2),
        child: Row(
          children: <Widget>[
            Text(
              '${this.widget.min}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: this.widget.sliderHeight * .3,
                fontWeight: FontWeight.w700,
                color: Colors.white,

              ),
            ),
            SizedBox(
              width: this.widget.sliderHeight * .1,
            ),
            Expanded(
              child: Center(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white.withOpacity(1),
                    inactiveTrackColor: Colors.white.withOpacity(.5),

                    trackHeight: 4.0,
                    thumbShape: CustomSliderThumbCircle(
                      thumbRadius: this.widget.sliderHeight * .4,
                      min: this.widget.min,
                      max: this.widget.max,
                    ),
                    overlayColor: Colors.white.withOpacity(.4),
                    //valueIndicatorColor: Colors.white,
                    activeTickMarkColor: Colors.white,
                    inactiveTickMarkColor: Colors.red.withOpacity(.7),
                  ),
                  child: Slider(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
              ),
            ),
            SizedBox(
              width: this.widget.sliderHeight * .1,
            ),
            Text(
              '${this.widget.max}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: this.widget.sliderHeight * .3,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final int min;
  final int max;

  const CustomSliderThumbCircle({
    @required this.thumbRadius,
    this.min = 0,
    this.max = 10,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(PaintingContext context,
      Offset center,
      {Animation<double> activationAnimation,
        Animation<double> enableAnimation,
        bool isDiscrete,
        TextPainter labelPainter,
        RenderBox parentBox,
        SliderThemeData sliderTheme,
        TextDirection textDirection,
        double value,
        double textScaleFactor,
        Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    TextSpan span = new TextSpan(
      style: new TextStyle(
        fontSize: thumbRadius * .8,
        fontWeight: FontWeight.w700,
        color: sliderTheme.thumbColor,
      ),
      text: getValue(value),
    );
    TextPainter tp = new TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr
    );
    tp.layout();
    Offset textCenter =
    Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));

    canvas.drawCircle(center, thumbRadius * .9, paint);
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return ((max * value).round()).toString();
  }
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