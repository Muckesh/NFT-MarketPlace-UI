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
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(25),
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20,
              color: Colors.white70,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(25),
          ),
          alignment: Alignment.center,
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
