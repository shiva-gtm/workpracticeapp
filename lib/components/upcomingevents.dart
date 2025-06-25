import 'package:flutter/material.dart';

class Upcomingevents extends StatelessWidget {
  final dynamic color;
  final String text;
  final String assets;
  const Upcomingevents({
    super.key,
    required this.color,
    required this.text,
    required this.assets,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFFECECEC), width: 2),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(assets, fit: BoxFit.fill),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 115),
                child: Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Reserve palce for 2025 Holi',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.location_on, size: 15),
                Text('Kathmandu', style: TextStyle(fontSize: 10)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '₹ 1000 Onwards',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 28,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Color(0XFFFF2281),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'View',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
