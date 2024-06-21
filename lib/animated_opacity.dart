import 'dart:math';

import 'package:flutter/material.dart';

class SecoundPage extends StatefulWidget {
  const SecoundPage({super.key});

  @override
  State<SecoundPage> createState() => _SecoundPageState();
}

class _SecoundPageState extends State<SecoundPage> {
  var mOpacity=0.70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Opacity")),
      body: AnimatedOpacity(
        duration: Duration(seconds: 2),
          opacity: mOpacity,

        child: InkWell(
          onTap: (){
            mOpacity=Random().nextInt(11)/10;
            setState(() {
            });
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
