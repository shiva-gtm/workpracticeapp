import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF005EA6),
      child: Column(
        children: [
          SizedBox(height: 120),
          Image.asset('assets/logo.png', height: 60, width: 153),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('assets/2.png', width: 300, height: 200)],
          ),
          SizedBox(height: 80),
          Text(
            "Every Event Solutions",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            "From planning to promotion, we help",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            textAlign: TextAlign.center,
            "organizers host seamless corporate, private",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            textAlign: TextAlign.center,
            "and public events with powerful tools.",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
