import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  var mAlignment= Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Align")),
      body:AnimatedAlign(
        duration:Duration(seconds: 2) ,
        alignment: mAlignment,
        curve: Curves.slowMiddle,
        child: InkWell(
          onTap: (){
            mAlignment=mAlignment==Alignment.center?Alignment.topRight:Alignment.center;
            setState(() {

            });
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
        ),
      ) ,
    );
  }
}
