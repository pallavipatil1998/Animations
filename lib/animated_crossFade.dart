import 'package:flutter/material.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({super.key});

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  bool firstVisible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated CrossFade")),
      body: InkWell(
        onTap: (){

          firstVisible=!firstVisible;
          setState(() {
            
          });
        },
        child: AnimatedCrossFade(
            firstChild: Container(
              width: 200,height: 200, color: Colors.blue,
            ),
            secondChild: Image.network("https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg"),
            crossFadeState: firstVisible?CrossFadeState.showFirst:CrossFadeState.showSecond,
            duration: Duration(seconds: 2)
        ),
      ),
    );
  }
}
