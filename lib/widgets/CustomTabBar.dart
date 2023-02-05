import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'CustomTab.dart';

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

            // color: Colors.black,
            border: Border.all(width: 2, color: Colors.white),
          ),
          isScrollable: true,
          tabs: [
            CustomTab(
              icon: Icon(Icons.explore_outlined),
              title: 'Recent',
            ),
            CustomTab(
              icon: Icon(Icons.fire_hydrant_alt),
              title: 'Trending',
            ),
            CustomTab(
              icon: Icon(Icons.camera_alt_outlined),
              title: 'Pictures',
            ),
            CustomTab(
              icon: Icon(Icons.games_outlined),
              title: 'Games',
            ),
            CustomTab(
              icon: Icon(Icons.emoji_nature),
              title: 'Nature',
            ),
          ],
        ),
        //tab View
        Expanded(
          child: TabBarView(
            children: [
              Container(
                child: Center(
                  child: Image.asset("assets/images/ape1.jpg"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Trending"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Pictures"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Games"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Nature"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
