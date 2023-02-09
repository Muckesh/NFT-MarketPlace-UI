import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FrostedGlass extends StatelessWidget {
  final child;
  const FrostedGlass({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        // height: 100,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              // color: Color(0xffDDDDDD),
              color: Colors.white38,
              blurRadius: 6.0,
              // spreadRadius: 2.0,
              // offset: Offset(0.0, 0.0),
            )
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: child,
        ),
      ),
    );
  }
}
