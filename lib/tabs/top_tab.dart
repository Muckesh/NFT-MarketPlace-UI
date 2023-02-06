import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/NftCard.dart';

class TopTab extends StatelessWidget {
  final List<NFT> top;
  const TopTab({super.key, required this.top});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
        itemCount: top.length,
        itemBuilder: (context, index) {
          return NftCard(
              img: top[index].img,
              price: top[index].price,
              title: top[index].title,
              category: top[index].category);
        });
  }
}
