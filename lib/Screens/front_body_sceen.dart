import 'package:flutter/material.dart';
import 'package:gdsc_clickable/Screens/head.dart';
import '../components/custom_positioned_widget.dart';

class FrontBodyScreen extends StatefulWidget {
  const FrontBodyScreen({Key? key});

  @override
  State<FrontBodyScreen> createState() => _FrontBodyScreenState();
}

class _FrontBodyScreenState extends State<FrontBodyScreen> {
  double scale = 1.0; // Initial scale factor
  bool showDialogBox = false;


  void _showDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Dialog Title"),
          content: Text("This is the dialog content."),
          actions: <Widget>[
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2b2b),
      body: LayoutBuilder(builder: (context, constraints) {
        double height = constraints.maxHeight;
        double width = constraints.maxWidth;
        return Stack(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 500), // Adjust the duration as needed
              curve: Curves.easeInOut, // Adjust the curve as needed
              transform: Matrix4.identity()..scale(scale),
              child: Image.asset(
                "assets/images/front_scale.png",
                height: height,
                width: width,
              ),
            ),
            CustomPositionedWidget(
              height: height,
              width: width,
              top: height * 0.1,
              left: width * 0.35,
              positionedHeight: 100,
              positionedWidth: 100,
              action: () {
                print("Head pressed");
                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   return SoloBodyPartScreen(heroTag: "Head",bodyPart: "Head", bodyPartDescription: "This is the most important part of the body", imageUrl: "assets/images/head.png");
                // }));
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => SoloBodyPartScreen(heroTag: "Head",bodyPart: "Head", bodyPartDescription: "This is the most important part of the body", imageUrl: "assets/images/head.png"),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = 0.0;
                      const end = 1.0;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end).chain(
                        CurveTween(curve: curve),
                      );

                      var scaleAnimation = animation.drive(tween);

                      return ScaleTransition(
                        scale: scaleAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),
            CustomPositionedWidget(
              height: height,
              width: width,
              top: height * 0.25,
              left: width * 0.33,
              positionedHeight: 120,
              positionedWidth: 120,
              action: () {
                print("Chest pressed");

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => SoloBodyPartScreen(heroTag: "Chest",bodyPart: "Chest", bodyPartDescription: "This is the most important part of the body", imageUrl: "assets/images/chest.png"),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = 0.0;
                      const end = 1.0;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end).chain(
                        CurveTween(curve: curve),
                      );

                      var scaleAnimation = animation.drive(tween);

                      return ScaleTransition(
                        scale: scaleAnimation,
                        child: child,
                      );
                    },
                  ),
                );


              },
            ),
            CustomPositionedWidget(
              height: height,
              width: width,
              top: height * 0.4,
              left: width * 0.33,
              positionedHeight: 120,
              positionedWidth: 120,
              action: () {
                print("Abdominal cavity pressed");

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => SoloBodyPartScreen(heroTag: "Abdominal",bodyPart: "Abdominal Cavity", bodyPartDescription: "This is the most important part of the body", imageUrl: "assets/images/abdomen.png"),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = 0.0;
                      const end = 1.0;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end).chain(
                        CurveTween(curve: curve),
                      );

                      var scaleAnimation = animation.drive(tween);

                      return ScaleTransition(
                        scale: scaleAnimation,
                        child: child,
                      );
                    },
                  ),
                );


              },
            ),
            CustomPositionedWidget(
              height: height,
              width: width,
              top: height * 0.38,
              left: width * 0.01,
              positionedHeight: 150,
              positionedWidth: 90,
              action: () {
                print("Right hand pressed");


                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => SoloBodyPartScreen(heroTag: "right_hand",bodyPart: "Right hand", bodyPartDescription: "This is the most important part of the body", imageUrl: "assets/images/right_hand.png"),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = 0.0;
                      const end = 1.0;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end).chain(
                        CurveTween(curve: curve),
                      );

                      var scaleAnimation = animation.drive(tween);

                      return ScaleTransition(
                        scale: scaleAnimation,
                        child: child,
                      );
                    },
                  ),
                );



              },
            ),
            CustomPositionedWidget(
              height: height,
              width: width,
              top: height * 0.38,
              left: width * 0.8,
              positionedHeight: 150,
              positionedWidth: 90,
              action: () {
                print("Left hand pressed");


                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => SoloBodyPartScreen(heroTag: "left_hand",bodyPart: "Left Hand", bodyPartDescription: "This is the most important part of the body", imageUrl: "assets/images/left_hand.png"),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = 0.0;
                      const end = 1.0;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end).chain(
                        CurveTween(curve: curve),
                      );

                      var scaleAnimation = animation.drive(tween);

                      return ScaleTransition(
                        scale: scaleAnimation,
                        child: child,
                      );
                    },
                  ),
                );



              },
            ),
            CustomPositionedWidget(
              height: height,
              width: width,
              top: height * 0.57,
              left: width * 0.23,
              positionedHeight: 220,
              positionedWidth: 90,
              action: () {
                print("Right leg pressed");


                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => SoloBodyPartScreen(heroTag: "right_leg",bodyPart: "Right Leg", bodyPartDescription: "This is the most important part of the body", imageUrl: "assets/images/right_leg.png"),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = 0.0;
                      const end = 1.0;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end).chain(
                        CurveTween(curve: curve),
                      );

                      var scaleAnimation = animation.drive(tween);

                      return ScaleTransition(
                        scale: scaleAnimation,
                        child: child,
                      );
                    },
                  ),
                );


              },
            ),
            CustomPositionedWidget(
              height: height,
              width: width,
              top: height * 0.57,
              left: width * 0.5,
              positionedHeight: 220,
              positionedWidth: 90,
              action: () {
                print("Left leg pressed");


                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => SoloBodyPartScreen(heroTag: "left_leg",bodyPart: "Left Leg", bodyPartDescription: "This is the most important part of the body", imageUrl: "assets/images/left_leg.png"),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = 0.0;
                      const end = 1.0;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end).chain(
                        CurveTween(curve: curve),
                      );

                      var scaleAnimation = animation.drive(tween);

                      return ScaleTransition(
                        scale: scaleAnimation,
                        child: child,
                      );
                    },
                  ),
                );


              },
            ),
            CustomPositionedWidget(
              height: height,
              width: width,
              top: height * 0.85,
              left: width * 0.23,
              positionedHeight: 50,
              positionedWidth: 90,
              action: () {
                print("Right foot pressed");

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => SoloBodyPartScreen(heroTag: "right_foot",bodyPart: "Right Foot", bodyPartDescription: "This is the most important part of the body", imageUrl: "assets/images/right_foot.png"),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = 0.0;
                      const end = 1.0;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end).chain(
                        CurveTween(curve: curve),
                      );

                      var scaleAnimation = animation.drive(tween);

                      return ScaleTransition(
                        scale: scaleAnimation,
                        child: child,
                      );
                    },
                  ),
                );

              },
            ),
            CustomPositionedWidget(
              height: height,
              width: width,
              top: height * 0.85,
              left: width * 0.53,
              positionedHeight: 50,
              positionedWidth: 90,
              action: () {
                print("Left foot pressed");

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => SoloBodyPartScreen(heroTag: "left_foot",bodyPart: "Left Foot", bodyPartDescription: "This is the most important part of the body", imageUrl: "assets/images/left_foot.png"),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = 0.0;
                      const end = 1.0;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end).chain(
                        CurveTween(curve: curve),
                      );

                      var scaleAnimation = animation.drive(tween);

                      return ScaleTransition(
                        scale: scaleAnimation,
                        child: child,
                      );
                    },
                  ),
                );



              },
            ),
          ],
        );
      }),
    );
  }
}
