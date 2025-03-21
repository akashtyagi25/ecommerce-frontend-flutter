import 'package:flutter/material.dart';

class imageslider extends StatelessWidget {
  final Function (int) onChange;
  final int currentslide;
  const imageslider({
    super.key,
    required this.currentslide,
    required this.onChange
    });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "images/slider.jpg",
                  fit: BoxFit.fill,),
                   Image.asset(
                  "images/slider3.png",
                  fit: BoxFit.cover,),
                   Image.asset(
                  "images/image1.png",
                  fit: BoxFit.fitWidth,)
              ],
            ),
            ),
            ),
            Positioned.fill(
              bottom: 10,
              child: Align(alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index)=>AnimatedContainer(
                    duration: const Duration(
                      microseconds: 30),
                      width: currentslide == index ? 15:10,height: 8,margin: const EdgeInsets.only(right: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentslide==index ? Colors.black : Colors.transparent,
                        border: Border.all(color: Colors.black)
                      ),
                  ),
                  ),
                ),
            ),),
            ],
    );
  }
}