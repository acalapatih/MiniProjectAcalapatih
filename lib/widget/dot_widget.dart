import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  final Color dotColor;

  const DotWidget({
    super.key,
    required this.dotColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
          color: dotColor,
          shape: BoxShape.circle
      ),
    );
  }
}
