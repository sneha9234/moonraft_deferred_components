import 'package:flutter/material.dart';

/// A simple blue 30x30 box.
class DeferredBox extends StatelessWidget {
  const DeferredBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.red),
        ),
      ),
    );
  }
}