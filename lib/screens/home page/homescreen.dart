import 'package:flutter/material.dart';
import 'package:workpracticeapp/components/ourservices.dart';
import 'package:workpracticeapp/components/upcomingevents.dart';
import 'package:workpracticeapp/screens/home%20page/hometopsection.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTopSection(),
            SizedBox(height: 10),
            Image.asset("assets/farm1.png"),
            SizedBox(height: 10),
            Card(
              color: Colors.white,
              margin: EdgeInsets.only(left: 0, right: 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Services',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Ourservices(text: 'Events', assets: 'assets/event.png'),
                        SizedBox(width: 5),
                        Ourservices(
                          text: 'Registration',
                          assets: 'assets/registration.png',
                        ),
                        SizedBox(width: 5),
                        Ourservices(text: 'Deals', assets: 'assets/deals.png'),
                        SizedBox(width: 5),
                        Ourservices(
                          text: 'Voting',
                          assets: 'assets/voting.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.white,
              margin: EdgeInsets.only(left: 0, right: 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Image.asset(
                    'assets/banner1.png',
                    height: 150,
                    width: 350,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.white,
              margin: EdgeInsets.only(left: 0, right: 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upcoming Events',
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
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Upcomingevents(),
                          SizedBox(width: 10),
                          Upcomingevents(),
                          SizedBox(width: 10),
                          Upcomingevents(),
                          SizedBox(width: 10),
                          Upcomingevents(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
