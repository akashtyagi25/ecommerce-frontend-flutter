
import 'package:flutter/material.dart';
import 'package:project9/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: contentcolor,
          padding: const EdgeInsets.all(20)),
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Image.asset(
            'images/icon.png',
            height: 20,)
            ),
              IconButton(
          style: IconButton.styleFrom(
            backgroundColor: contentcolor,
          padding: const EdgeInsets.all(20)),
          onPressed: (){}, 
          icon:const Icon(Icons.notifications_outlined),
          iconSize: 30,
              )
      ],
    );
  }
}