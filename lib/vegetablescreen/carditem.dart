import 'package:delivery_app/color_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItemVegetable extends StatefulWidget {
  const CardItemVegetable({super.key});

  @override
  State<CardItemVegetable> createState() => _CardItemVegetableState();
}

class _CardItemVegetableState extends State<CardItemVegetable> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      border: Border.all(color: AppColurs.borderColor,width: 1)),
        child: Row(
      children: [
        SvgPicture.asset(
          'images/1boston.svg',
          fit: BoxFit.contain,
        ),
        Column(
          children: [
            const Text('Boston Lettuce'),
            const Text('1.10€ / piece'),
            Row(
              children: [
                Container(
                  // child: Icon(Icons.star, color: Colors.yellow,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(width: 1, color: AppColurs.borderColor)),
                  child: const Icon(
                    Icons.heart_broken_outlined,
                  ),
                ),
                Container(
                  color: Colors.green,
                  // child: Icon(Icons.star, color: Colors.yellow,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(width: 1, color: AppColurs.borderColor)),
                  child: SvgPicture.asset('images/2cart-shopping-solid.svg' ,fit: BoxFit.scaleDown,),
                  ),
                
              ],
            )
          ],
        )
      ],
    ));
  }
}
