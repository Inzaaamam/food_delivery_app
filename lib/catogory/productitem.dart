import 'package:delivery_app/color_screen.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String text;
  final String imageUrl;
  final VoidCallback? onPressed;
  

  const CustomCard(
      {super.key,
      required this.title,
      required this.text,
      required this.imageUrl, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(7, 15, 7, 15),
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
            // height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: AppColurs.borderColor,
                  width: 1,
                )),
            // width: 150,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.contain, // Adjust the BoxFit property as needed
                    // Adjust the height as needed
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 16, 0, 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18, // Adjust the font size as needed
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                          height:
                              8), // Adjust the spacing between title and text as needed
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 12, // Adjust the font size as needed
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
