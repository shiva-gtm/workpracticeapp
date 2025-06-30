import 'package:flutter/material.dart';
import 'package:workpracticeapp/screens/notification%20page/date_day.dart';
import 'package:workpracticeapp/screens/notification%20page/notificationcard.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80),
          Center(
            child: Text(
              'Notifications',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
          ),
          SizedBox(height: 20),
          DateDay(date: '12th June 2025', day: 'Sunday'),
          NotificationCard(
            asset: 'assets/notification1.png',
            title: 'Your ticket is ready',
            time: '12:00 PM',
            place: 'Tech Innovators Summit',
          ),
          DateDay(date: '6th June 2025', day: 'Monday'),
          NotificationCard(
            asset: 'assets/notification2.png',
            title: 'Schedule changed',
            time: '10:00 AM',
            place: 'Art & Culture Festival',
          ),
          NotificationCard(
            asset: 'assets/notification3.png',
            title: 'Sarts tomorrow',
            time: '8:00 PM',
            place: 'Music Fest',
          ),
          DateDay(date: '3rd June 2025', day: 'Thursday'),
          NotificationCard(
            asset: 'assets/notification4.png',
            title: 'Schedule Changed',
            time: '2:00 PM',
            place: 'Art & Culture Festival',
          ),
        ],
      ),
    );
  }
}
