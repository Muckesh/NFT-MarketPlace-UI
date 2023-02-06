import 'package:flutter/material.dart';
import 'package:nft_marketplace/data/data.dart';

import '../widgets/NftCard.dart';

class TrendingTab extends StatelessWidget {
  final List<NFT> trending;
  const TrendingTab({super.key, required this.trending});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
        itemCount: trending.length,
        itemBuilder: (context, index) {
          return NftCard(
              img: trending[index].img,
              price: trending[index].price,
              title: trending[index].title,
              category: trending[index].category);
        });
  }
}
