import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF005EA6),
      child: Column(
        children: [
          SizedBox(height: 120),
          Image.asset('assets/logo.png', height: 60, width: 153),
          SizedBox(height: 20),
          Stack(
            children: [
              SizedBox(
                height: 320,
                width: 120,
                child: Image.asset('assets/4.png', fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(55.0),
                child: SizedBox(
                  height: 250,
                  width: 400,
                  child: Image.asset('assets/3.png', fit: BoxFit.contain),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Exclusive Deals & Add-ons",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            "Enjoy event-only offers on food, beverages,",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            textAlign: TextAlign.center,
            "and lifestyle products. Discover exclusive",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            textAlign: TextAlign.center,
            "artist merch and venue perks.",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
