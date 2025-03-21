import 'package:flutter/material.dart';
import 'package:project9/favorite_provider.dart';
import 'package:project9/product.dart';

class detailappbar extends StatelessWidget {
  final product Product;
  const detailappbar({super.key,required this.Product});

  @override
  Widget build(BuildContext context) {
    final provider=FavoriteProvider.of(context);
    return  Padding(padding: const EdgeInsets.all(10),
    child: Row(
      children: [
         IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
          padding: const EdgeInsets.all(15)),
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon:const Icon(Icons.arrow_back_ios_rounded),
              ),
            const  Spacer(),
               IconButton(
          style: IconButton.styleFrom(
           backgroundColor: Colors.white,
          padding: const EdgeInsets.all(15)),
          onPressed: (){}, 
          icon:const Icon(Icons.share_outlined),
              ),
              const SizedBox(width: 10,),
               IconButton(
          style: IconButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.all(15)),
          //iconSize: 30,
          onPressed: (){
            provider.toggleFavorite(Product);
          }, 
          icon: Icon(
            provider.isexist(Product)?
            Icons.favorite:Icons.favorite_border,color: Colors.black,size: 25,),
              )
      ],
    ),);
  }
}