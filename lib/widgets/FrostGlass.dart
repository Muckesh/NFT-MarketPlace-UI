import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FrostGlass extends StatelessWidget {
  final child;
  final EdgeInsets padding;
  const FrostGlass({super.key, required this.child, required this.padding});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        // height: 100,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              // color: Color(0xffDDDDDD),
              color: Colors.white54,
              blurRadius: 6.0,
              // spreadRadius: 2.0,
              // offset: Offset(0.0, 0.0),
            )
          ],
        ),
        padding: padding,
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
