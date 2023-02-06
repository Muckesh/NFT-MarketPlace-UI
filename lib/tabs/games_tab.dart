import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/NftCard.dart';

class GamesTab extends StatelessWidget {
  final List<NFT> games;
  const GamesTab({super.key, required this.games});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
        itemCount: games.length,
        itemBuilder: (context, index) {
          return NftCard(
              img: games[index].img,
              price: games[index].price,
              title: games[index].title,
              category: games[index].category);
        });
  }
}
