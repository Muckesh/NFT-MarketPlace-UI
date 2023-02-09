import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/NftCard.dart';

class LatestTab extends StatelessWidget {
  final List<NFT> latest;
  const LatestTab({super.key, required this.latest});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
        itemCount: latest.length,
        itemBuilder: (context, index) {
          return NftCard(
              img: latest[index].img,
              price: latest[index].price,
              title: latest[index].title,
              category: latest[index].category);
        });
  }
}
