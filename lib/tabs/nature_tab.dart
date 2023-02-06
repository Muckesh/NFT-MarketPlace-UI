import 'package:flutter/material.dart';

import '../widgets/NftCard.dart';

class NatureTab extends StatelessWidget {
  const NatureTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
        itemCount: 3,
        itemBuilder: (context, index) {
          return NftCard(
              img: "assets/images/${index + 10}.png",
              price: 0.84,
              title: "Panama Ape",
              category: "Street Monkeys");
        });
  }
}
