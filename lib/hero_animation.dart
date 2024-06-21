import 'package:animation/heroAnimation_unothepage.dart';
import 'package:flutter/material.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({super.key});

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  var imageList=["https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg",
    "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2/",
    "https://images.pexels.com/photos/36762/scarlet-honeyeater-bird-red-feathers.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/45853/grey-crowned-crane-bird-crane-animal-45853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/3680912/pexels-photo-3680912.jpeg",
    "https://images.pexels.com/photos/1122639/pexels-photo-1122639.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation"),),
      body: GridView.builder(
        itemCount: imageList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4/2

          ),
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>HerosPage(index: index, imgUrl: imageList[index])
                //     Scaffold(
                //   body: SizedBox(
                //     height: double.infinity,
                //     width: double.infinity,
                //     child: Hero(
                //       tag: imageList[index],
                //         child: Image.network(imageList[index],fit: BoxFit.fill,)),
                //
                //   ),
                //
                // )
                )
                );
              },
              child: Hero(
                tag: imageList[index],
                child: Image.network(imageList[index],
                  fit: BoxFit.fill,

                ),
              )
            );
          }
      ),
    );
  }
}
