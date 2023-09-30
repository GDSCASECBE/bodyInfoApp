import 'package:flutter/material.dart';

import '../components/custom_positioned_widget.dart';

class BackBodyScreen extends StatefulWidget {
  const BackBodyScreen({super.key});

  @override
  State<BackBodyScreen> createState() => _BackBodyScreenState();
}

class _BackBodyScreenState extends State<BackBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2b2b),
      body: LayoutBuilder(
          builder: (context,constraints) {
            double height = constraints.maxHeight;
            double width = constraints.maxWidth;
            return Stack(
              fit: StackFit.expand,
              children: [
                Image.asset("assets/images/back_scale.png",height: height,width: width,),

              ],
            );
          }
      ),
    );
  }
}


