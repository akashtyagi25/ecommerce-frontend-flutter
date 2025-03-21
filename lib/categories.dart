
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project9/category.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
   
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
              color: selectedindex==index?Colors.blue.shade200:Colors.transparent),
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
    );
  }
}