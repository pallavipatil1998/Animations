import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {

  double mPadding= 11.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Padding")),
      body: AnimatedPadding(
        duration: Duration(seconds: 2),
        padding: EdgeInsets.all(mPadding),
        curve: Curves.bounceOut,
        child: InkWell(
          onTap: (){
            mPadding=20.0;
            setState(() {
              
            });
          },
          child: Container(
            height: 200,width: 200,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
