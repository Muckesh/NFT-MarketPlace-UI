import 'package:flutter/material.dart';
import 'package:nft_marketplace/data/data.dart';

import '../tabs/latest_tab.dart';
import '../tabs/new_tab.dart';
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
  // List<NFT> recent = datas.sublist(0, 6);
  // List<NFT> trending = datas.sublist(6, 10);
  // List<NFT> top = datas.sublist(10, 13);
  // List<NFT> games = datas.sublist(13, 16);
  // List<NFT> nature = datas.sublist(16, 19);
  List tabOptions = [
    ["Recent", RecentTab(recent: datas.sublist(0, 6))],
    ["Trending", TrendingTab(trending: datas.sublist(6, 10))],
    ["Top", TopTab(top: datas.sublist(10, 13))],
    ["Latest", LatestTab(latest: datas.sublist(13, 16))],
    ["New", NewTab(news: datas.sublist(16, 19))]
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xff1B1B1B),
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
