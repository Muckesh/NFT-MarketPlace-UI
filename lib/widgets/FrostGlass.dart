import 'dart:ui';

import 'package:flutter/material.dart';

class FrostGlass extends StatelessWidget {
  final child;
  final EdgeInsets padding;
  const FrostGlass({super.key, required this.child, required this.padding});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white54,
              blurRadius: 6.0,
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
