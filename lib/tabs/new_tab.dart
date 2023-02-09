import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/NftCard.dart';

class NewTab extends StatelessWidget {
  final List<NFT> news;
  const NewTab({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
        itemCount: news.length,
        itemBuilder: (context, index) {
          return NftCard(
              img: news[index].img,
              price: news[index].price,
              title: news[index].title,
              category: news[index].category);
        });
  }
}
