import 'package:flutter/material.dart';

class HerosPage extends StatelessWidget {
  int index;
  String imgUrl;

  HerosPage({required this.index,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Hero(
          tag: "${index}",
           child: Image.network(imgUrl,fit: BoxFit.fill,),

        ),
      )
    );
  }
}
