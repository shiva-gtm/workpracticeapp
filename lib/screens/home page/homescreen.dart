import 'package:flutter/material.dart';
import 'package:workpracticeapp/components/otherservices.dart';
import 'package:workpracticeapp/components/ourservices.dart';
import 'package:workpracticeapp/components/upcomingevents.dart';
import 'package:workpracticeapp/screens/home%20page/hometopsection.dart';
import 'package:workpracticeapp/screens/home%20page/reuseablecard.dart';

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
            SizedBox(height: 15),
            ReuseableCard(
              text: 'Upcoming Events',
              children: [
                Upcomingevents(
                  color: Color(0xFFFF2281),
                  text: 'Fast Filling',
                  assets: 'assets/upcomingevent1.png',
                ),
                SizedBox(width: 10),
                Upcomingevents(
                  color: Color(0xFF3873EA),
                  text: 'Early Bird',
                  assets: 'assets/upcomingevent1.png',
                ),
                SizedBox(width: 10),
                Upcomingevents(
                  color: Color(0xFF3873EA),
                  text: 'Early Bird',
                  assets: 'assets/upcomingevent1.png',
                ),
                SizedBox(width: 10),
                Upcomingevents(
                  color: Color(0xFFFF2281),
                  text: 'Fast Filling',
                  assets: 'assets/upcomingevent1.png',
                ),
              ],
            ),
            SizedBox(height: 15),
            ReuseableCard(
              text: 'Upcoming Registration',
              children: [
                Upcomingevents(
                  color: null,
                  text: '',
                  assets: 'assets/upcomingevent1.png',
                ),
                SizedBox(width: 10),
                Upcomingevents(
                  color: null,
                  text: '',
                  assets: 'assets/upcomingevent1.png',
                ),
                SizedBox(width: 10),
                Upcomingevents(
                  color: null,
                  text: '',
                  assets: 'assets/upcomingevent1.png',
                ),
                SizedBox(width: 10),
                Upcomingevents(
                  color: null,
                  text: '',
                  assets: 'assets/upcomingevent1.png',
                ),
              ],
            ),
            SizedBox(height: 15),
            ReuseableCard(
              text: 'Ongoing Deals',
              children: [
                Upcomingevents(
                  color: null,
                  text: '',
                  assets: 'assets/upcomingevent1.png',
                ),
                SizedBox(width: 10),
                Upcomingevents(
                  color: null,
                  text: '',
                  assets: 'assets/upcomingevent1.png',
                ),
                SizedBox(width: 10),
                Upcomingevents(
                  color: null,
                  text: '',
                  assets: 'assets/upcomingevent1.png',
                ),
                SizedBox(width: 10),
                Upcomingevents(
                  color: null,
                  text: '',
                  assets: 'assets/upcomingevent1.png',
                ),
              ],
            ),
            SizedBox(height: 15),
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
                    'assets/banner2.png',
                    height: 120,
                    width: 350,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
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
                          'Our Past Events',
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
                      child: Row(
                        children: [
                          Image.asset('assets/pastevent1.png'),
                          SizedBox(width: 10),
                          Image.asset('assets/pastevent1.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Card(
              color: Colors.white,
              margin: EdgeInsets.only(left: 0, right: 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Other Services',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        OtherServices(
                          text: 'Vendors',
                          assets: 'assets/vendors.png',
                        ),
                        SizedBox(width: 15),
                        OtherServices(
                          text: 'Lights',
                          assets: 'assets/lights.png',
                        ),
                        SizedBox(width: 15),
                        OtherServices(
                          text: 'Sound System',
                          assets: 'assets/sound.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Card(
              color: Colors.white,
              margin: EdgeInsets.only(left: 0, right: 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 20,
                  bottom: 15,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      width: 400,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Color(0xFFECECEC), width: 2),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/question.png',
                            width: 30,
                            height: 45,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: 20),
                          Text('FAQs', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 55,
                      width: 400,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Color(0xFFECECEC), width: 2),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/help.png',
                            width: 30,
                            height: 45,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Help and Support',
                            style: TextStyle(fontSize: 16),
                          ),
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
