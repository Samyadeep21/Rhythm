
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'sign_in.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: LoginPage(),
      duration: 50,
      imageSize: 150,
      imageSrc: "assets/images/music_pic 1.jpg",
      text: "Rhythm",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.white,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.pinkAccent.shade100,
    );
//
//     Timer(Duration(seconds:6), () {
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => LoginPage())
//       );
//     }
//     );
//
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(   gradient: LinearGradient(
//             begin: Alignment.bottomLeft,
//             end: Alignment.topRight,
//             stops: [0.1, 0.5, 0.7, 0.9],
//             colors: [ Colors.pink.shade500,
//               Colors.pink.shade400,
//               Colors.pink.shade300,
//               Colors.pink.shade200,])),
      //   width: MediaQuery.of(context).size.width,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text("Rhythm",
      //         style: TextStyle(
      //           fontSize: 20,
      //           color: Colors.white,
      //
      //           fontWeight: FontWeight.bold,
      //           fontStyle: FontStyle.italic,
      //         ),
      //       ),
      //
      //     ],
      //   ),
      // ),

  }
}
