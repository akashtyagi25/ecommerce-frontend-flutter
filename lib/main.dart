import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project9/bottom_nav_bar.dart';
import 'package:project9/cart_provider.dart';
import 'package:project9/favorite_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
 Widget build(BuildContext context)=>MultiProvider(providers: [
  ChangeNotifierProvider(create: (_)=> cart_provider(), ),
  ChangeNotifierProvider(create: (_)=> FavoriteProvider(),)
 

 ],
 child : MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
 textTheme:GoogleFonts.mulishTextTheme(),
  ),
 home: const bottomnavbar(),
 ),);
}

 

