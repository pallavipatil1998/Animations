import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double mWidth=100.0;
  double mHeight=100.0;
  var mColor= Colors.blue;
  var mRadius=0.0;
  List mColorsList=[Colors.blue,Colors.green,Colors.purple,Colors.pink,Colors.red];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(Duration(seconds: 2),
           () {
             mWidth=Random().nextInt(500).toDouble();
             mHeight=Random().nextInt(500).toDouble();
             // mColor=Colors.red;
             // mColor=mColorsList[Random().nextInt(mColorsList.length)];
             mColor=Colors.primaries[Random().nextInt(Colors.primaries.length)];
             mRadius=Random().nextInt(100).toDouble();
             setState(() {

             });
           }
   );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation Conatiner")),
      body: Center(
        child: InkWell(
          onTap: (){
            mWidth=Random().nextInt(500).toDouble();
            mHeight=Random().nextInt(500).toDouble();
            // mColor=Colors.red;
            // mColor=mColorsList[Random().nextInt(mColorsList.length)];
            mColor=Colors.primaries[Random().nextInt(Colors.primaries.length)];
            mRadius=Random().nextInt(100).toDouble();
            setState(() {

            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
              width: mWidth,
              height: mHeight,
            decoration: BoxDecoration(
              color: mColor,
              borderRadius: BorderRadius.circular(mRadius)
            ),

          ),
    ),
      )

    );
  }
}
