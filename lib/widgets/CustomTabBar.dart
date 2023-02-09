import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nft_marketplace/tabs/latest_tab.dart';
import 'package:nft_marketplace/tabs/new_tab.dart';
import 'package:nft_marketplace/tabs/recent_tab.dart';
import 'package:nft_marketplace/tabs/top_tab.dart';
import 'package:nft_marketplace/tabs/trending_tab.dart';

import 'package:nft_marketplace/widgets/FrostedGlass.dart';
import 'package:nft_marketplace/widgets/NftCard.dart';

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
                icon: Icon(FontAwesomeIcons.compass),
                title: tabOptions[0][0],
              ),
              CustomTab(
                icon: Icon(FontAwesomeIcons.fire),
                title: tabOptions[1][0],
              ),
              CustomTab(
                icon: Icon(Icons.camera_alt_outlined),
                title: tabOptions[2][0],
              ),
              CustomTab(
                icon: Icon(Icons.games_outlined),
                title: tabOptions[3][0],
              ),
              CustomTab(
                icon: Icon(Icons.emoji_nature),
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
