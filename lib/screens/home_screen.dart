import 'package:flutter/material.dart';
import 'package:nft_marketplace/widgets/FrostedGlass.dart';

import '../tabs/games_tab.dart';
import '../tabs/nature_tab.dart';
import '../tabs/recent_tab.dart';
import '../tabs/top_tab.dart';
import '../tabs/trending_tab.dart';
import '../widgets/CustomAppBar.dart';
import '../widgets/CustomTabBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List tabOptions = [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
    ["Games", GamesTab()],
    ["Nature", NatureTab()]
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xff1B1B1B),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CustomAppBar(
                title: 'Explore Collections',
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTabBar(
                tabOptions: tabOptions,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
