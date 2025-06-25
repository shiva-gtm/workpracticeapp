import 'package:flutter/material.dart';
import 'package:workpracticeapp/components/logintextfield.dart';
import 'package:workpracticeapp/components/passwordtextfield.dart';
import 'package:workpracticeapp/components/reusablebutton.dart';
import 'package:workpracticeapp/screens/home%20page/homescreen.dart';
import 'package:workpracticeapp/screens/login%20and%20signup/resetpassword.dart';
import 'package:workpracticeapp/screens/login%20and%20signup/signupscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                SizedBox(height: 160),
                Center(child: Image.asset('assets/loginpagelogo.png')),
                SizedBox(height: 50),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                LoginTextField(hintText: 'Enter Your Email'),
                SizedBox(height: 15),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                PasswordTextField(
                  hintText: "Enter Your Password",
                  obsureText: true,
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ResetPassword();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFFFF2281),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ReusableButton(
                  text: 'Log In',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Homepage();
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
                    Text("Don't Have Account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignupScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
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
