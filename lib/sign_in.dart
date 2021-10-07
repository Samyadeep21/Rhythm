import 'package:flutter/material.dart';
import 'package:untitled1/play_list.dart';
import 'music_on_board.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  BuildContext? _context;
  bool passShow = false;


  @override
  Widget build(BuildContext context) {
    if (_context == null) {
      _context = context;
    }
    return Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          child: Padding(
            padding: EdgeInsets.only(left: 28),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 10,
              ),
             InkWell(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => OnBoardingPage()));
                   },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
          ),
        ),
        body: Container(
          height: 740,
          // width: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/music_pic 1.jpg'),
            fit: BoxFit.cover,
          )),
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 250.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Text(
                    'Login to your account:',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    // blueGrey.shade100,
                    filled: true,
                    hintText: 'Email :',
                      hintStyle: TextStyle(fontSize: 20.0, color: Colors.white60),
                    labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: Icon(
                      Icons.email,
                      color: Colors.white60,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  controller: passwordController,
                  obscureText:!passShow,
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    // blueGrey.shade100,
                    filled: true,
                    labelStyle: TextStyle(color: Colors.white60),
                    hintText: 'Password :',
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white60),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passShow = !passShow;
                        });
                      },
                      icon: (passShow == true)
                          ? Icon(Icons.visibility, color: Colors.white60)
                          : Icon(Icons.visibility_off, color: Colors.white60),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      'Forget your password?',
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
             Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                  colors: [
                    Colors.pink.shade400,
                    Colors.pink.shade200,
                  ],
                ),
                color: Colors.pink.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),

                  backgroundColor:
                  MaterialStateProperty.all(Colors.transparent),
                  // elevation: MaterialStateProperty.all(3),
                  shadowColor:
                  MaterialStateProperty.all(Colors.transparent),
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     primary: Colors.pink,
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(60)),
                //   ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage2()));
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 50,
                      right: 50,
                      top: 9,
                      bottom: 9,
                    ),

                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
