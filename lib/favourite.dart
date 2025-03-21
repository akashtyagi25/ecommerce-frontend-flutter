import 'package:flutter/material.dart';
import 'package:project9/constants.dart';
import 'package:project9/favorite_provider.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    final Provider = FavoriteProvider.of(context);
    final finallist=Provider.favorites;
    return  Scaffold(
      backgroundColor: contentcolor,
        appBar: AppBar(title: const Text("Favorite",style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,),
        body: Column(
          children: [
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
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
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
                            Text(cartitem.title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             const SizedBox(height: 5,),
                             Text(cartitem.category,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey),),
                                const SizedBox(height: 8,),
                                 Text("\$${cartitem.price}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),


                          ],
                        )

                      ],
                    ),
                  ),
                  ),
                  Positioned(
                    top: 50,
                    right: 40,
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
    );
  }
}