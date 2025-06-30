import 'package:flutter/material.dart';
import 'package:workpracticeapp/screens/home%20page/homescreen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:workpracticeapp/screens/myprofilescreen.dart';
import 'package:workpracticeapp/screens/myticketscreen.dart';
import 'package:workpracticeapp/screens/notification%20page/notificationscreen.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Homepage(),
    MyTicketScreen(),
    Center(child: Text('Scan')),
    NotificationScreen(),
    MyProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: _screens[_currentIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: SalomonBottomBar(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            backgroundColor: Colors.white,
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            items: [
              SalomonBottomBarItem(
                icon: Image.asset('assets/home.png'),
                title: const Text(""),
                selectedColor: Color(0xFFFF1479),
              ),
              SalomonBottomBarItem(
                icon: Image.asset('assets/navticket.png'),
                title: const Text(""),
                selectedColor: Color(0xFFFF1479),
              ),
              SalomonBottomBarItem(
                icon: Image.asset('assets/scan.png'),
                title: const Text(""),
                selectedColor: Color(0xFFFF1479),
              ),
              SalomonBottomBarItem(
                icon: Image.asset('assets/notification.png'),
                title: const Text(""),
                selectedColor: Color(0xFFFF1479),
              ),
              SalomonBottomBarItem(
                icon: Image.asset('assets/profile.png'),
                title: const Text(""),
                selectedColor: Color(0xFFFF1479),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
