import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image.asset('assets/ticket.png', width: 350)],
          ),
          SizedBox(height: 100),
          Text(
            "Discover & Book Events",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            "Explore and book tickets for concerts, ",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            textAlign: TextAlign.center,
            "sports, festivals, conferences, movies, and",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            textAlign: TextAlign.center,
            "more — both online and offline.",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
