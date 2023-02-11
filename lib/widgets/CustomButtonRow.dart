import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.5),
            ),
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.5),
          ),
          child: const Icon(
            Icons.star_border_outlined,
            size: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
