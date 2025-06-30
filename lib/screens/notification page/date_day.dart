import 'package:flutter/material.dart';

class DateDay extends StatelessWidget {
  final String date;
  final String day;

  const DateDay({super.key, required this.date, required this.day});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 5, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Text(day),
        ],
      ),
    );
  }
}
