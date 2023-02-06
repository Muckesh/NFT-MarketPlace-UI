import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            Expanded(child: Container()),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(25),
              ),
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/eth.png",
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Text(
                    "Make Collection Bid",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
