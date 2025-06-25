import 'package:flutter/material.dart';
import 'package:workpracticeapp/screens/onboarding%20page/intro_page1.dart';
import 'package:workpracticeapp/screens/onboarding%20page/intro_page2.dart';
import 'package:workpracticeapp/screens/onboarding%20page/intro_page3.dart';
import 'package:workpracticeapp/screens/login%20and%20signup/loginscreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  int onPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onPage = index;
              });
            },
            children: [IntroPage1(), IntroPage2(), IntroPage3()],
          ),
          Container(
            alignment: Alignment(0, 0.85),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  onPage == 2
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        )
                      : _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF2281),
                ),
                child: Text(
                  onPage == 0
                      ? 'Get Started'
                      : onPage == 1
                      ? "Plan Your Event"
                      : 'Browse Offers',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
