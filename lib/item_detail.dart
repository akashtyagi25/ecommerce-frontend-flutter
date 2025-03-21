import 'package:flutter/material.dart';
import 'package:project9/constants.dart';
import 'package:project9/product.dart';

class itemdetails extends StatelessWidget {
  final product Product;
  const itemdetails({super.key,required this.Product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Product.title,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w800),
        ),
    
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\$${Product.price}",style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w800)),
                  const SizedBox(height: 10,),
                  //for rating
                  Row(children: [
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kprimaryColor
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          const Icon(Icons.star,size: 15,color: Colors.white,),
                          const SizedBox(width: 4,),
                            Text(Product.rate.toString(),style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Text(Product.review,style: const TextStyle(color: Colors.grey,fontSize: 15),)
                  ],
                  )
              ],
            ),
            const Spacer(),
           Text.rich(
            TextSpan(
              children: [
                 TextSpan(text: "selller : ",style: TextStyle(fontSize: 15),),
                  TextSpan(text: Product.seller,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ]
            )
           )
             
          

          ],
        ),
          
      ],
    );
  }
}