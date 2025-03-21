import 'package:flutter/material.dart';
import 'package:project9/cart_scren.dart';
import 'package:project9/constants.dart';
import 'package:project9/favourite.dart';
import 'package:project9/home.dart';
import 'package:project9/profile.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int cuttentindex=2;
   List screens = const [
            Scaffold(),
            Favourite(),
            homescreen(),
           cartpage(),
        Profile3(),
          ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState((){
          cuttentindex=2;
         
        });
      },
      shape: CircleBorder(),
      backgroundColor: kprimaryColor,
     
      child: const Icon(Icons.home,color: Colors.white,size: 30,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize  : MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              setState(() {
                cuttentindex=0;
              });
            }, icon: Icon(
              Icons.grid_view_outlined,
                size: 30,
                color: cuttentindex == 0 ? kprimaryColor : Colors.grey.shade400,
            ),
            ),
             IconButton(onPressed: (){
               setState(() {
                cuttentindex=1;
              });
             }, icon: Icon(
              Icons.favorite_border,
                size: 30,
                color: cuttentindex == 1 ? kprimaryColor : Colors.grey.shade400,
            ),
            ),
            const SizedBox(width: 15,),
             IconButton(onPressed: (){
               setState(() {
                cuttentindex=3;
              });
             }, icon: Icon(
              Icons.shopping_cart_outlined,
                size: 30,
                color: cuttentindex == 3 ? kprimaryColor : Colors.grey.shade400,
            ),
            ),
             IconButton(onPressed: (){
               setState(() {
                cuttentindex=4;
              });
             }, icon: Icon(
              Icons.person,
                size: 30,
                color: cuttentindex == 4 ? kprimaryColor : Colors.grey.shade400,
            ),
            ),
          ],
        ),
        ),
        body: screens[cuttentindex],
    );
  }
}