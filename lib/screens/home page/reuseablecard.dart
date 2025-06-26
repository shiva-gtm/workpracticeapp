import 'package:flutter/material.dart';
import 'package:workpracticeapp/components/upcomingevents.dart';

class ReuseableCard extends StatelessWidget {
  final String text;
  final dynamic children;
  const ReuseableCard({super.key, required this.text, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(left: 0, right: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(
                      color: Color(0xFFFF2281),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: children),
            ),
          ],
        ),
      ),
    );
  }
}
