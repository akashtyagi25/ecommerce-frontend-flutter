import 'package:flutter/material.dart';
import 'package:project9/constants.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({super.key,required this.description});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 120,height: 40,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kprimaryColor
                ),
                alignment: Alignment.center,
                child: const Text("description",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                const Text("specification",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w800),),
                 const Text(
                  "Reviews",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w800
                    ),
                    ),
              ],
            ),
            const SizedBox(height: 20,),
            Text(description,style: const TextStyle( fontSize: 15,color: Colors.grey),)

      ],
    );
  }
}