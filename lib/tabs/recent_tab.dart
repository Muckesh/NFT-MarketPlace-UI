import 'package:flutter/material.dart';
import 'package:nft_marketplace/data/data.dart';

import '../widgets/NftCard.dart';

class RecentTab extends StatelessWidget {
  final List<NFT> recent;
  const RecentTab({super.key, required this.recent});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
        itemCount: recent.length,
        itemBuilder: (context, index) {
          return NftCard(
              img: recent[index].img,
              price: recent[index].price,
              title: recent[index].title,
              category: recent[index].category);
        });
  }
}
