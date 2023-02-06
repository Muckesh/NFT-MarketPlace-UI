import 'package:flutter/material.dart';

import '../widgets/NftCard.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
        itemCount: 6,
        itemBuilder: (context, index) {
          return NftCard(
              img: "assets/images/ape${index + 1}.jpg",
              price: 0.84,
              title: "Panama Ape",
              category: "Street Monkeys");
        });
  }
}
