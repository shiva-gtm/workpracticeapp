import 'package:flutter/material.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 380,
          decoration: BoxDecoration(
            color: Color(0xFF005EA6),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 70, left: 25),
          child: Text(
            "Hello, Ravi",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100, left: 25),
          child: Text(
            'Welcome to Tixify',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140, left: 25, right: 30),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Color(0xFF828282), fontSize: 16),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Color(0xFF828282),
                  size: 30,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 4),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 110,
                child: Image.asset('assets/line1.png', fit: BoxFit.contain),
              ),
              SizedBox(height: 70),
              SizedBox(
                height: 110,
                child: Image.asset('assets/line2.png', fit: BoxFit.contain),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                child: Image.asset('assets/line3.png', fit: BoxFit.contain),
              ),
              Image.asset('assets/line4.png'),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.only(top: 210, left: 25),
          child: GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 130,
              child: Image.asset('assets/flashdeals.png', fit: BoxFit.contain),
            ),
          ),
        ),
      ],
    );
  }
}
