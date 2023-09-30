import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.onPress
  });

  final double height;
  final double width;
  final String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: height*0.05,
        minWidth: width*0.3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        color: Colors.white70,
        onPressed: onPress,
        child: Text(title, style: GoogleFonts.quicksand(color: Colors.black,fontWeight: FontWeight.w500,fontSize:20),)
    );
  }
}
