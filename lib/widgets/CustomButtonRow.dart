import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_marketplace/widgets/FrostGlass.dart';

class CustomButtonRow extends StatelessWidget {
  const CustomButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: FrostGlass(
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20,
              color: Colors.white70,
            ),
          ),
        ),
        FrostGlass(
          padding: EdgeInsets.all(20),
          child: Icon(
            Icons.star_border_outlined,
            size: 20,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
