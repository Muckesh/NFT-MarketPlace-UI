import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/NftCard.dart';

class NatureTab extends StatelessWidget {
  final List<NFT> nature;
  const NatureTab({super.key, required this.nature});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
        itemCount: nature.length,
        itemBuilder: (context, index) {
          return NftCard(
              img: nature[index].img,
              price: nature[index].price,
              title: nature[index].title,
              category: nature[index].category);
        });
  }
}
