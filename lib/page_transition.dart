import 'package:animation/page_transition_unotherPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class PageTansitions extends StatefulWidget {
  const PageTansitions({super.key});

  @override
  State<PageTansitions> createState() => _PageTansitionsState();
}

class _PageTansitionsState extends State<PageTansitions> {
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
      appBar: AppBar(title: Text("Page Transition"),),
      body: GridView.builder(
        itemCount: imageList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5),
          itemBuilder: (ctx,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, PageTransition(
                    child: SecoundPageTransition(imgUrl: imageList[index]),
                    childCurrent: PageTansitions(),
                    type: PageTransitionType.scale,alignment: Alignment.center,
                  duration: Duration(seconds: 2)
                ));
              },
              child: Image.network(imageList[index],fit: BoxFit.fill,),
            );
          }
      ),
    ) ;
  }
}
