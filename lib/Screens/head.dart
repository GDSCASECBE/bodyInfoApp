import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class SoloBodyPartScreen extends StatefulWidget {
  SoloBodyPartScreen({super.key,required this.bodyPart,required this.bodyPartDescription,required this.imageUrl,required this.heroTag});
  String bodyPart;
  String bodyPartDescription;
  String imageUrl;
  String heroTag;
  @override
  State<SoloBodyPartScreen> createState() => _SoloBodyPartScreenState();
}

class _SoloBodyPartScreenState extends State<SoloBodyPartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2b2b),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 2,child: Hero(tag: widget.heroTag,child: Image.asset(widget.imageUrl))),
            Text(widget.bodyPart,style: GoogleFonts.quicksand(color: Colors.white,fontWeight: FontWeight.w500,fontSize:90,)),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.bodyPartDescription,style: GoogleFonts.quicksand(color: Colors.white,fontWeight: FontWeight.w500,fontSize:30,)),
            ))
          ],
        ),
      ),
    );
  }
}


