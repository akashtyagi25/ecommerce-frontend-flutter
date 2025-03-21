import 'package:flutter/material.dart';
import 'package:project9/constants.dart';
import 'package:project9/detail_screen.dart';
import 'package:project9/favorite_provider.dart';
import 'package:project9/product.dart';




class product_cart extends StatelessWidget {
  final product Product;
  const product_cart({super.key,required this.Product});

  @override
  Widget build(BuildContext context) {
    final provider=FavoriteProvider.of(context);
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> detailscreen(Product: Product)),);
      },
      child: Stack(children: [
        Container(
          
          width: double.infinity,
        decoration: BoxDecoration(
          color: contentcolor,
          borderRadius: BorderRadius.circular(20),
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(height: 05,),
          Center(
            child: Hero(
              tag: Product.image,
              child: Image.asset(
                Product.image,
                width: 150,
                height: 150,
                fit: BoxFit.cover,),
            )
              ),
                 const SizedBox(height: 10,),
                 Padding(padding: const EdgeInsets.only(left: 10),
                 child: Text(Product.title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                 ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Text("\$${Product.price}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           Row(children: List.generate(Product.colors.length,(index)=>Container(
                          width: 18,
                          height: 18,
                          // ignore: prefer_const_constructors
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(color: Product.colors[index],shape: BoxShape.circle),
                        ),),)
                        ],
                       
                        ),
                        

        ],
        ),
        ),
        //favorite icon

        Positioned(child: Align(alignment: Alignment.topRight,
        child: Container(
          height: 35,
          width: 35,
          decoration: const BoxDecoration(
            color: kprimaryColor,
            borderRadius: BorderRadius.only(topRight:Radius.circular(20), 
            bottomLeft: Radius.circular(10),
            ),
          ),
          child: GestureDetector(
            onTap: (){
              provider.toggleFavorite(Product);
            },
            child:  Icon(
              provider.isexist(Product)?Icons.favorite:Icons.favorite_border_outlined,
              color: Colors.white,
              size: 22,),
          ),

        ),
        )
        )
      ],
      ),
    );
  }
}