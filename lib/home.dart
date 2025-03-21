import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project9/image_slider.dart';
import 'package:project9/product.dart';
import 'package:project9/product_cart.dart';
import 'package:project9/search_bar.dart';

import 'category.dart';
import 'home_app_bar.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int currentslider=0;
 int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    List<List<product>> selectedcategories=[
all,shoes,beauty,womenfashion,jewelry,menfashion
    ];
    return  Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(25),
        child: Column(
         
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            const SizedBox(height: 20,),
             const CustomAppBar(),
                const SizedBox(height: 20,),
                 const searchbar(),
                 const SizedBox(height: 20,),
                 imageslider(currentslide: currentslider, onChange: (value){setState(() {
                   currentslider=value;
                 },
                 );
                 },
                 ),
                 const SizedBox(height: 30,),

                    SizedBox(
   
      height: 130,child: ListView.builder(
        
           scrollDirection: Axis.horizontal,
           itemCount: categories.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedindex=index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: selectedindex==index?Colors.blue.shade200:Colors.transparent), //selsectd index
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                    image: AssetImage(categories[index].image),  
                    fit:BoxFit.cover  
                     ),
                      
                        ),
                        ),
                        SizedBox(height: 5,),Text(categories[index].title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                        ],
                        ),
            ),
          );

    },
    
    ),
    ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Special For You",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
                         
                        Row(
                          children: [
                              Text("See All",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54,),
                          ),
                          SizedBox(width: 5,),
                         Icon(Icons.arrow_forward)
                          ],
                        )
                          // SizedBox(width: 10,),
                        ],
                        ),
                        //shopping items
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                          childAspectRatio: 0.69,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20), 
                          itemCount: selectedcategories[selectedindex].length, //selectedindex lengt
                          itemBuilder: (context,index){
                            return product_cart(
                              Product: selectedcategories[selectedindex][index],
                            );
                          })
           
          ],
        ),
        ),
      )
    );
  }
}

