import 'package:flutter/material.dart';

class OtherServices extends StatelessWidget {
  final String text;
  final String assets;
  const OtherServices({super.key, required this.text, required this.assets});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 110,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFFECECEC), width: 2),
      ),
      child: Column(
        children: [
          SizedBox(height: 5),
          Image.asset(assets, height: 20, width: 20),
          SizedBox(height: 5),
          Text(text, style: TextStyle(color: Color(0xFF505050), fontSize: 11)),
        ],
      ),
    );
  }
}
