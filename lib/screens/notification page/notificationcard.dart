import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String time;
  final String place;
  final String asset;
  const NotificationCard({
    super.key,
    required this.title,
    required this.time,
    required this.place,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                child: Image.asset(asset, fit: BoxFit.contain),
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  Text(
                    time,
                    style: TextStyle(fontSize: 12, color: Color(0xFF697582)),
                  ),
                  Text(
                    place,
                    style: TextStyle(fontSize: 12, color: Color(0xFF697582)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
