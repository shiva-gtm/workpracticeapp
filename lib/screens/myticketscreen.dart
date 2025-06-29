import 'package:flutter/material.dart';

class MyTicketScreen extends StatefulWidget {
  const MyTicketScreen({super.key});

  @override
  State<MyTicketScreen> createState() => _MyTicketScreenState();
}

class _MyTicketScreenState extends State<MyTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('My Tickets Screen')));
  }
}
