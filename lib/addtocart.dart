import 'package:flutter/material.dart';
import 'package:project9/cart_provider.dart';
import 'package:project9/constants.dart';
import 'package:project9/product.dart';


class Addtocart extends StatefulWidget {
   final product Product;
  const Addtocart({super.key,required this.Product});

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  int currentIndex=1;

  @override
  Widget build(BuildContext context) {
    final Provider=cart_provider.of(context);
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black,
      
      ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white,width: 2),
              ),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    if(currentIndex!=1){
                      setState(() {
                        currentIndex--;
                      });
                    }
                  },iconSize: 18, icon: const Icon(Icons.remove,color: Colors.white,)),
                  const SizedBox(width: 5,),
                  Text(currentIndex.toString(),style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                   const SizedBox(width: 5,),
                    IconButton(onPressed: (){
                      setState(() {
                        currentIndex++;  
                      });
                    },iconSize: 18, icon: const Icon(Icons.add,color: Colors.white,))

                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Provider.toggleFavorite(widget.Product);
            const snackBar= SnackBar(
                  content: Text(
                    "Successfully Added To Cart!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white
                      ),

                      ),
                      duration: Duration(seconds: 1),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(50)
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child: const Text("Add To Cart",style:  TextStyle(fontSize: 20 ,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            )
          ],

        ),
    ),
    
    
    );
  }
}