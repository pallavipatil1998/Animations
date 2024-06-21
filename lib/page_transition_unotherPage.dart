import 'package:flutter/material.dart';

class SecoundPageTransition extends StatelessWidget {
  // var index;
  var imgUrl;

  SecoundPageTransition({required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width:  double.infinity,
          height:  double.infinity,
          child: Image.network(imgUrl,fit: BoxFit.fill,)
      ),
    );
  }
}
