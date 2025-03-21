import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project9/constants.dart';

class searchbar extends StatelessWidget {
  const searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: contentcolor,
        borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 8),
      child:  Row(
        children: [
          Icon(
            Icons.search_outlined,
            color: Colors.grey,
            size: 25,
            ),
            SizedBox(width: 10,),
            Flexible(
              flex: 4,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                ),
              )
              ),
              Container(
                height: 25,
                width: 1.5,
                color: Colors.grey,
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.tune,color: Colors.grey,),),
        ],
      ),
    );
  }
}