import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../widgets/CustomButtonRow.dart';

class NftDetailScreen extends StatelessWidget {
  final String img;
  final String title;
  final String category;
  final double price;
  const NftDetailScreen(
      {super.key,
      required this.img,
      required this.title,
      required this.category,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 25),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomButtonRow(),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            Text(
              "Collection",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              category,
              style: TextStyle(
                color: Colors.grey[100],
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "5.7 k\nOwners",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "${price}\nETH",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SlideAction(
              sliderRotate: false,
              sliderButtonYOffset: 9.6,
              height: 100,
              onSubmit: () {},
              borderRadius: 30,
              innerColor: Colors.white.withOpacity(0.7),
              outerColor: Colors.white.withOpacity(0.3),
              sliderButtonIconPadding: 2,
              sliderButtonIcon: Image.asset(
                "assets/images/eth.png",
                height: 70,
                width: 70,
              ),
              text: "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tMake Collection Bid",
              textStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            //   decoration: BoxDecoration(
            //     color: Colors.white.withOpacity(0.3),
            //     borderRadius: BorderRadius.circular(25),
            //   ),
            //   alignment: Alignment.bottomCenter,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         padding: EdgeInsets.all(2),
            //         decoration: BoxDecoration(
            //           color: Colors.white.withOpacity(0.7),
            //           borderRadius: BorderRadius.circular(30),
            //         ),
            //         // alignment: Alignment.center,
            //         child: Image.asset(
            //           "assets/images/eth.png",
            //           height: 70,
            //           width: 70,
            //         ),
            //       ),
            //       Text(
            //         "Make Collection Bid",
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 18,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
