import 'package:flutter/material.dart';
import 'package:project9/bottom_nav_bar.dart';
import 'package:project9/cart_provider.dart';
import 'package:project9/check_out.dart';
import 'package:project9/constants.dart';


class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    final Provider = cart_provider.of(context);
    final finallist=Provider.cart;
    // for quantity
    productquantity(IconData icon,int index){
      return GestureDetector(
        onTap: (){
          setState(() {
            icon==Icons.add 
            ? Provider.incrementqtn(index)
            : Provider.decrementqtn(index);
          });
        },
       child: Icon(icon,size: 20,),
      );
    }
    return  Scaffold(
        //for totaland checkout
        bottomSheet:  checkbox(),
        backgroundColor: contentcolor,
        body: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(15)),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const bottomnavbar(),
                    ),
                    );
                  }, 
                  icon:const Icon(Icons.arrow_back_ios_rounded),
                      ),
                      const Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      Container(width: 50,),
                    ],
                  ),
                  ),
                  Expanded(
                
                    child: ListView.builder(
                      itemCount: finallist.length,
                      itemBuilder: (context,index){
                        final cartitem=finallist[index];
                      return Stack(
                        children: [
                          Padding(padding: const EdgeInsets.all(15),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                    
                            ),
                            padding: const EdgeInsets.all(13),
                            child: Row(
                              children: [
                                Container(
                                  width: 120,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: contentcolor,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(cartitem.image),
                                ),
                                const SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(cartitem.title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.deepPurple),),
                                     const SizedBox(height: 5,),
                                     Text(cartitem.category,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey),),
                                        const SizedBox(height: 10,),
                                         Text("\$${cartitem.price}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
                    
                    
                                  ],
                                )
                    
                              ],
                            ),
                          ),
                          ),
                          Positioned(
                            top: 35,
                            right: 35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){
                                finallist.removeAt(index);
                                setState(() {
                                  
                                },
                                );
                              }, icon: const Icon(
                                Icons.delete_outline_outlined,
                                color: Colors.red,
                                size: 25,
                                )
                                ),
                                const SizedBox(height: 10,),
                                Container(height: 40,
                                decoration: BoxDecoration(
                                  color: contentcolor,
                                 border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 2
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child:  Row(
                                  children: [
                                    const SizedBox(width: 10,),
                                    productquantity(Icons.remove, index),
                                       const SizedBox(width: 10,),
                    
                                    Text(cartitem.quantity.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                      ),
                                      ),
                                      const SizedBox(width: 10,),
                                    productquantity(Icons.add, index),
                                       const SizedBox(width: 10,),
                                  ],
                                ),
                                )
                            ],
                          ),
                          )
                        ],
                      );
                    }
                    )
                  )
                  
                ],
              ),
            ),
          );
        
        
      
    
  }
}