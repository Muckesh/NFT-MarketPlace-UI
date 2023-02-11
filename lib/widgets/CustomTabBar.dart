import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CustomTab.dart';

class CustomTabBar extends StatelessWidget {
  final List tabOptions;
  const CustomTabBar({super.key, required this.tabOptions});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
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
                icon: const Icon(FontAwesomeIcons.compass),
                title: tabOptions[0][0],
              ),
              CustomTab(
                icon: const Icon(FontAwesomeIcons.fire),
                title: tabOptions[1][0],
              ),
              CustomTab(
                icon: const Icon(Icons.camera_alt_outlined),
                title: tabOptions[2][0],
              ),
              CustomTab(
                icon: const Icon(Icons.games_outlined),
                title: tabOptions[3][0],
              ),
              CustomTab(
                icon: const Icon(Icons.emoji_nature),
                title: tabOptions[4][0],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          //tab View
          Expanded(
            child: TabBarView(
              children: [
                tabOptions[0][1],
                tabOptions[1][1],
                tabOptions[2][1],
                tabOptions[3][1],
                tabOptions[4][1],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
