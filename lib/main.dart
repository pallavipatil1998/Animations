import 'package:animation/animatedAlign.dart';
import 'package:animation/animated_crossFade.dart';
import 'package:animation/animated_opacity.dart';
import 'package:animation/animated_paddingf.dart';
import 'package:animation/hero_animation.dart';
import 'package:flutter/material.dart';
import 'package:animation/page_transition.dart';

import 'animated_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:PageTansitions()
    );
  }
}






