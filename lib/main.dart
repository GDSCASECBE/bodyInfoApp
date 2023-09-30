import 'package:flutter/material.dart';
import 'package:gdsc_clickable/Screens/back_body_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/front_body_sceen.dart';
import 'components/custom_material_button.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        double height = constraints.maxHeight;
        double width = constraints.maxWidth;
        return Scaffold(
          backgroundColor: Colors.black54,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome, click on to start",style: GoogleFonts.quicksand(color: Colors.white,fontWeight: FontWeight.w500,fontSize:30),),
                SizedBox(height: 10,),
                CustomMaterialButton(height: height, width: width,title: "Start",onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return FrontBodyScreen();
                  }));
                },),
                SizedBox(height: 10,),
              ],
            ),
          ),
        );
      }
    );
  }
}

