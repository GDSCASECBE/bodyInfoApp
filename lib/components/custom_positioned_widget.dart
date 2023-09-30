import 'package:flutter/material.dart';



class CustomPositionedWidget extends StatelessWidget {
  const CustomPositionedWidget({
    super.key,
    required this.height,
    required this.width,
    required this.action,
    required this.top,
    required this.left,
    required this.positionedWidth,
    required this.positionedHeight
  });

  final double height;
  final double width;
  final VoidCallback action;
  final double top;
  final double left;
  final double positionedWidth;
  final double positionedHeight;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      width: positionedWidth,
      height: positionedHeight,
      child: GestureDetector(
        onTap: action,
        child: Container(color: Colors.transparent),
      ),
    );
  }
}

