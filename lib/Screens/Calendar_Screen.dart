import 'package:flutter/material.dart';
import 'package:task_managment_ui_copy/Screens/_CalendarItemServices.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  final Map<String, List<Map<String, dynamic>>> allDaysTasks = {
    "Day1": [
      {
        "title": "User Interviews",
        "time": "16:00 - 18:30",
        "highlight": true,
        "progress": 0.8,
        "avatars": [
          "assets/images/Ellipse40.png",
          "assets/images/Ellipse37.png",
          "assets/images/Ellipse38.png",
        ],
      },
      {
        "title": "Wireframe",
        "time": "16:00 - 18:30",
        "highlight": false,
        "progress": 0.4,
        "avatars": [
          "assets/images/Ellipse39.png",
          "assets/images/Ellipse40.png",
          "assets/images/Ellipse41.png",
        ],
      },
      {
        "title": "Icons",
        "time": "16:00 - 18:30",
        "highlight": false,
        "progress": 0.2,
        "avatars": [
          "assets/images/Ellipse42.png",
          "assets/images/Ellipse43.png",
          "assets/images/Ellipse45.png",
        ],
      },
    ],

    "Day2": [
      {
        "title": "Mockups",
        "time": "10:00 - 12:00",
        "highlight": false,
        "progress": 0.6,
        "avatars": [
          "assets/images/Ellipse43.png",
          "assets/images/Ellipse37.png",
          "assets/images/Ellipse45.png",
        ],
      },
      {
        "title": "Testing",
        "time": "13:00 - 15:00",
        "highlight": false,
        "progress": 0.3,
        "avatars": [
          "assets/images/Ellipse46.png",
          "assets/images/Ellipse381.png",
        ],
      },
      {
        "title": "Design Review",
        "time": "16:00 - 18:30",
        "highlight": true,
        "progress": 1.0,
        "avatars": [
          "assets/images/Ellipse37.png",
          "assets/images/Ellipse38.png",
        ],
      },
    ],

    "Day3": [
      {
        "title": "Backend API",
        "time": "09:00 - 11:30",
        "highlight": false,
        "progress": 0.5,
        "avatars": [
          "assets/images/Ellipse39.png",
          "assets/images/Ellipse40.png",
        ],
      },
      {
        "title": "Frontend Integration",
        "time": "14:00 - 15:30",
        "highlight": false,
        "progress": 0.7,
        "avatars": ["assets/images/Ellipse41.png"],
      },
      {
        "title": "Team Sync",
        "time": "17:00 - 18:00",
        "highlight": false,
        "progress": 0.9,
        "avatars": [
          "assets/images/Ellipse42.png",
          "assets/images/Ellipse43.png",
          "assets/images/Ellipse38.png",
        ],
      },
    ],

    "Day4": [
      {
        "title": "Client Meeting",
        "time": "11:00 - 12:30",
        "highlight": true,
        "progress": 0.95,
        "avatars": [
          "assets/images/Ellipse45.png",
          "assets/images/Ellipse46.png",
          "assets/images/Ellipse39.png",
        ],
      },
      {
        "title": "Deployment",
        "time": "18:00 - 20:00",
        "highlight": false,
        "progress": 0.3,
        "avatars": [
          "assets/images/Ellipse37.png",
          "assets/images/Ellipse38.png",
        ],
      },
      {
        "title": "Bug Fixes",
        "time": "14:00 - 15:00",
        "highlight": false,
        "progress": 0.6,
        "avatars": ["assets/images/Ellipse39.png"],
      },
    ],

    "Day5": [
      {
        "title": "Prototype Build",
        "time": "09:00 - 11:00",
        "highlight": true,
        "progress": 0.85,
        "avatars": [
          "assets/images/Ellipse40.png",
          "assets/images/Ellipse41.png",
        ],
      },
      {
        "title": "UI Refinement",
        "time": "12:00 - 13:30",
        "highlight": false,
        "progress": 0.5,
        "avatars": ["assets/images/Ellipse42.png"],
      },
      {
        "title": "Code Review",
        "time": "15:00 - 16:30",
        "highlight": false,
        "progress": 0.2,
        "avatars": [
          "assets/images/Ellipse43.png",
          "assets/images/Ellipse45.png",
        ],
      },
    ],

    "Day6": [
      {
        "title": "Planning",
        "time": "09:00 - 09:30",
        "highlight": true,
        "progress": 1.0,
        "avatars": [
          "assets/images/Ellipse45.png",
          "assets/images/Ellipse46.png",
          "assets/images/Ellipse38.png",
        ],
      },
      {
        "title": "Wireframe Update",
        "time": "10:00 - 12:00",
        "highlight": false,
        "progress": 0.45,
        "avatars": [
          "assets/images/Ellipse37.png",
          "assets/images/Ellipse38.png",
        ],
      },
      {
        "title": "Client Feedback",
        "time": "17:00 - 18:00",
        "highlight": false,
        "progress": 0.7,
        "avatars": [
          "assets/images/Ellipse39.png",
          "assets/images/Ellipse40.png",
        ],
      },
    ],

    "Day7": [
      {
        "title": "Integration Testing",
        "time": "11:00 - 13:00",
        "highlight": true,
        "progress": 0.9,
        "avatars": [
          "assets/images/Ellipse41.png",
          "assets/images/Ellipse42.png",
        ],
      },
      {
        "title": "UI Polishing",
        "time": "14:00 - 15:30",
        "highlight": false,
        "progress": 0.4,
        "avatars": [
          "assets/images/Ellipse43.png",
          "assets/images/Ellipse45.png",
        ],
      },
      {
        "title": "Release Prep",
        "time": "16:00 - 17:00",
        "highlight": false,
        "progress": 0.2,
        "avatars": ["assets/images/Ellipse45.png"],
      },
    ],

    "Day8": [
      {
        "title": "Daily Standup",
        "time": "09:00 - 09:30",
        "highlight": true,
        "progress": 0.7,
        "avatars": [
          "assets/images/Ellipse46.png",
          "assets/images/Ellipse38.png",
          "assets/images/Ellipse37.png",
        ],
      },
      {
        "title": "Performance Testing",
        "time": "13:00 - 15:00",
        "highlight": false,
        "progress": 0.5,
        "avatars": ["assets/images/Ellipse38.png"],
      },
      {
        "title": "Client Presentation",
        "time": "17:00 - 18:30",
        "highlight": true,
        "progress": 1.0,
        "avatars": [
          "assets/images/Ellipse39.png",
          "assets/images/Ellipse40.png",
        ],
      },
    ],

    "Day9": [
      {
        "title": "Bug Triage",
        "time": "10:00 - 11:00",
        "highlight": false,
        "progress": 0.3,
        "avatars": ["assets/images/Ellipse41.png"],
      },
      {
        "title": "Code Optimization",
        "time": "12:00 - 13:30",
        "highlight": true,
        "progress": 0.8,
        "avatars": [
          "assets/images/Ellipse42.png",
          "assets/images/Ellipse43.png",
        ],
      },
      {
        "title": "Design QA",
        "time": "14:00 - 15:30",
        "highlight": false,
        "progress": 0.6,
        "avatars": ["assets/images/Ellipse45.png"],
      },
    ],

    "Day10": [
      {
        "title": "Final Review",
        "time": "09:00 - 11:00",
        "highlight": true,
        "progress": 1.0,
        "avatars": [
          "assets/images/Ellipse45.png",
          "assets/images/Ellipse46.png",
          "assets/images/Ellipse381.png",
        ],
      },
      {
        "title": "User Acceptance Testing",
        "time": "12:00 - 14:00",
        "highlight": false,
        "progress": 0.5,
        "avatars": [
          "assets/images/Ellipse37.png",
          "assets/images/Ellipse38.png",
        ],
      },
      {
        "title": "Deployment Handover",
        "time": "15:00 - 16:00",
        "highlight": true,
        "progress": 0.9,
        "avatars": [
          "assets/images/Ellipse39.png",
          "assets/images/Ellipse40.png",
        ],
      },
    ],
  };


  List<Map<String, dynamic>> days = [
    {'Date': 1, 'Day': 'Mon'},
    {'Date': 2, 'Day': 'Tue'},
    {'Date': 3, 'Day': 'Wed'},
    {'Date': 4, 'Day': 'Thu'},
    {'Date': 5, 'Day': 'Fri'},
    {'Date': 6, 'Day': 'Sat'},
    {'Date': 7, 'Day': 'Sun'},
    {'Date': 8, 'Day': 'Mon'},
    {'Date': 9, 'Day': 'Tue'},
    {'Date': 10, 'Day': 'Wed'},
  ];
  int selectedindex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232933),
      appBar: AppBar(
        backgroundColor: Color(0xff232933),
        leading: Icon(Icons.arrow_back),
        title: Text('Schedule', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              'assets/images/addsquare.png',
              height: 24,
              width: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'November',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  final day = days[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = day['Date'];
                        print(day['Date']);
                      });
                    },
                    child: Container(
                      width: 45,
                      height: 62,
                      margin: EdgeInsets.only(right: 10),
                      color: selectedindex == day['Date']
                          ? Color(0xffFED36A)
                          : Color(0xff263238),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            day['Date'].toString(),
                            style: TextStyle(
                              color: selectedindex == day['Date']
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            day['Day'].toString(),
                            style: TextStyle(
                              color: selectedindex == day['Date']
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Today's Tasks",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Builder(
                builder: (context) {
                  String dayKey = "Day$selectedindex";

                  if (allDaysTasks.containsKey(dayKey)) {
                    return CalendarItemServices(
                      allDaysTasks: allDaysTasks,
                      Dayno: dayKey,
                    );
                  } else {
                    return const Center(
                      child: Text(
                        'Nothing Here To Show',
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
