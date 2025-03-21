import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project9/addtocart.dart';
import 'package:project9/constants.dart';
import 'package:project9/description.dart';
import 'package:project9/detail_appbar.dart';
import 'package:project9/image.slider.dart';
import 'package:project9/item_detail.dart';
import 'package:project9/product.dart';

class detailscreen extends StatefulWidget {
 final product Product;
   const detailscreen({super.key,required this.Product});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  int currentimage=0;
 int currentcolor=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: contentcolor,
     //add to cart
     floatingActionButton: Addtocart(Product: widget.Product),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
            children: [
             detailappbar(Product: widget.Product),
              //detail app bar image slider
              image_slider(image:widget.Product.image, onChamge: (index){
                setState(() {
                  currentimage=index;
                }
                );
              }
              ),
              const SizedBox(height: 10,),
              Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(5, (index)=>AnimatedContainer(
                        duration: const Duration(
                          microseconds: 30),
                          width: currentimage == index ? 15:10,height: 8,margin: const EdgeInsets.only(right: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentimage==index ? Colors.black : Colors.transparent,
                            border: Border.all(color: Colors.black)
                          ),
                      ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      // height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                          )
                      ),
                      padding:const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                         bottom: 125
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //product name,price,seller,review
                              itemdetails(Product: widget.Product),
                               const SizedBox(height: 20,),
                               const Text("color",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                 const SizedBox(height: 20,),
                                 Row(
                                  children: 
                                    List.generate(widget.Product.colors.length , (index)=>GestureDetector(onTap: (){
                                      setState(() {
                                        currentcolor=index;
                                      });
                                    },
                                    child: AnimatedContainer(duration: const Duration(milliseconds: 300),
                                    width: 40,height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentcolor==index ? Colors.white : widget.Product.colors[index],
                                      border: currentcolor==index? Border.all(color: widget.Product.colors[index],) :null, ),
                                      padding: currentcolor==index? const EdgeInsets.all(2) : null,
                                      margin: const EdgeInsets.only(right: 10),
                                      child: Container(
                                        width: 35,height: 35,
                                        decoration: BoxDecoration(
                                          color: widget.Product.colors[index],
                                          shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    )
                                    )
                                  
                                 ),
                                 const SizedBox(height: 25,),
                                 //description
                               Description(description: widget.Product.description)
                          ],
                        ),
                      )
            
            
            ],
                  ),
          ),
        )),
    );
  }
}