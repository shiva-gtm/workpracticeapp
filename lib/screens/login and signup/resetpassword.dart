import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workpracticeapp/components/logintextfield.dart';
import 'package:workpracticeapp/components/passwordtextfield.dart';
import 'package:workpracticeapp/components/reusablebutton.dart';
import 'package:workpracticeapp/screens/login%20and%20signup/loginscreen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                'Reset Password',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 50),
              Text('Email address'),
              SizedBox(height: 5),
              LoginTextField(hintText: 'Enter Your Email'),
              SizedBox(height: 20),
              Text('OTP'),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  6,
                  (index) => SizedBox(
                    width: 55,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFFC8C8C8)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC8C8C8),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFFC8C8C8)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFFC8C8C8)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Resend Code',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15),
              Text("New Password"),
              SizedBox(height: 5),
              PasswordTextField(
                hintText: 'Enter New Password',
                obsureText: true,
              ),
              Text(
                'Use 8 or more characters with a mix of letters, numbers & symbols',
                style: TextStyle(fontSize: 11),
              ),
              SizedBox(height: 15),
              Text('Confirm Password'),
              SizedBox(height: 5),
              PasswordTextField(
                hintText: "Confirm New Password",
                obsureText: true,
              ),
              SizedBox(height: 40),
              ReusableButton(
                text: "Reset password",
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
            ],
          ),
        ),
      ),
    );
  }
}
