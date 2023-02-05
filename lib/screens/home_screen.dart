import 'package:flutter/material.dart';
import 'package:nft_marketplace/widgets/FrostedGlass.dart';

import '../widgets/CustomAppBar.dart';
import '../widgets/CustomTabBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xff1B1B1B),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              CustomAppBar(),
              SizedBox(height: 400, child: CustomTabBar()),
            ],
          ),
        ),
      ),
    );
  }
}
