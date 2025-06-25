import 'package:flutter/material.dart';
import 'package:workpracticeapp/components/logintextfield.dart';
import 'package:workpracticeapp/components/passwordtextfield.dart';
import 'package:workpracticeapp/components/reusablebutton.dart';
import 'package:workpracticeapp/screens/login%20and%20signup/loginscreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Center(child: Image.asset('assets/loginpagelogo.png')),
                SizedBox(height: 40),
                Text(
                  "First Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

                LoginTextField(hintText: "Enter Your First Name"),
                SizedBox(height: 10),
                Text(
                  "Second Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

                LoginTextField(hintText: "Enter Your Second Name"),
                SizedBox(height: 10),
                Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

                LoginTextField(hintText: "Enter Your Phone Number"),
                SizedBox(height: 10),

                Text(
                  "Email",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

                LoginTextField(hintText: "Enter Your Email"),
                SizedBox(height: 15),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

                PasswordTextField(
                  hintText: "Enter Your Password",
                  obsureText: false,
                ),
                Text(
                  'Use 8 or more characters with a mix of letters, numbers & symbols',
                  style: TextStyle(fontSize: 11),
                ),
                SizedBox(height: 30),
                ReusableButton(
                  text: "Sign up",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    right: 100,
                    left: 100,
                  ),
                  child: Divider(height: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Have Account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Color(0xFF005EA6)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
