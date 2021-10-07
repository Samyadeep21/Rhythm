import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}
TextEditingController passwordController = new TextEditingController();
BuildContext? _context;
bool passShow = false;
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    if (_context == null) {
      _context = context;
    }
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.pinkAccent,
            ),
            onPressed: () {Navigator.pop(context);},
          ),
          title: Center(
            child: Text(
              "Sign Up",
              style: TextStyle(color: Colors.pinkAccent, fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          )),
      body: Container(
          child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        SizedBox(
        height: 70,
      ),
        Padding(
          padding: const EdgeInsets.only(right: 520),
          child: Text(
            "Name",
            style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.grey.shade200,
            // blueGrey.shade100,
            filled: true,
            labelStyle: TextStyle(color: Colors.white),
            suffixIcon: Icon(
              Icons.person_sharp,
              color: Colors.blueGrey,
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
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 520),
          child: Text(
            "Email",
            style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 24,
                fontWeight: FontWeight.w600
               ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.grey.shade200,
            // blueGrey.shade100,
            filled: true,
            labelStyle: TextStyle(color: Colors.white),
            suffixIcon: Icon(
              Icons.mail,
              color: Colors.blueGrey,
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
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 520),
          child: Text(
            "Password",
            style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 24,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        SizedBox(
          height: 14.0,
        ),
        TextField(
          controller: passwordController,
          obscureText:!passShow,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade200,
            // blueGrey.shade100,
            filled: true,
            labelStyle: TextStyle(color: Colors.white60),

            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  passShow = !passShow;
                });
              },
              icon: (passShow == true)
                  ? Icon(Icons.visibility, color: Colors.blueGrey)
                  : Icon(Icons.visibility_off, color: Colors.blueGrey),
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
      ])
          ))
      )
    );
  }
}
