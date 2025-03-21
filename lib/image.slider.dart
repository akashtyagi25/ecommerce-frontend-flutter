import 'package:flutter/material.dart';

class image_slider extends StatelessWidget {
  final Function (int) onChamge;
  final String image;
  const image_slider({super.key,required this.image,required this.onChamge});

 @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 250,
      child: PageView.builder(
        onPageChanged: onChamge,
        itemBuilder: (context,index){
        return Hero(
          tag: image,
          child: Image.asset(image),
          );
      },
      ),
    );
  }
}