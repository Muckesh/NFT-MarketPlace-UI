import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Tab Bar
        TabBar(
          //splashBorderRadius: BorderRadius.circular(12),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.green,
            border: Border.all(width: 2, color: Colors.white),
          ),
          isScrollable: true,
          tabs: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.explore_outlined),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Recent",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Text("Trending"),
            Text("Pictures"),
            Text("Games"),
            Text("Nature"),
          ],
        ),
        //tab View
      ],
    );
  }
}
