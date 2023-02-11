import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  final child;
  const FrostedGlass({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white38,
              blurRadius: 6.0,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
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
