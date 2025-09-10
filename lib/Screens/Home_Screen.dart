import 'package:flutter/material.dart';
import 'package:task_managment_ui_copy/Screens/Profile_Screen.dart';
import 'package:task_managment_ui_copy/Screens/Task_Details.dart';
import 'package:task_managment_ui_copy/Screens/utils.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> tasks = [
    {
      "title": "Real Estate Website Design",
      "color": const Color(0xffFED36A),
      "avatars": [
        "assets/images/Ellipse1.png",
        "assets/images/Ellipse2.png",
        "assets/images/Ellipse3.png",
        "assets/images/Ellipse4.png",
        "assets/images/Ellipse5.png",
      ],
      "progress": 1.0,
      "status": 'completed',
      "ttcolor": Colors.black,
    },
    {
      "title": "Finance Mobile App Design",
      "color": const Color(0xff455A64),
      "avatars": [
        "assets/images/Ellipse1.png",
        "assets/images/Ellipse2.png",
        "assets/images/Ellipse3.png",
        "assets/images/Ellipse4.png",
        "assets/images/Ellipse5.png",
      ],
      "progress": 1.0,
      "status": "not completed",
      'ttcolor': Colors.white,
    },
    {
      "title": "VR Dashboard UI Design",
      "color": const Color(0xff37474F),
      "avatars": [
        "assets/images/Ellipse1.png",
        "assets/images/Ellipse2.png",
        "assets/images/Ellipse3.png",
        "assets/images/Ellipse4.png",
        "assets/images/Ellipse5.png",
      ],
      "progress": 1.0,
      "status": "not completed",
      'ttcolor': Colors.white,
    },
  ];
  final List<Map<String, dynamic>> Ongoingptojects = [
    {
      'title': 'Mobile App Wireframe',
      'avatars': [
        "assets/images/Ellipse3.png",
        "assets/images/Ellipse4.png",
        "assets/images/Ellipse5.png",
      ],
      'Due Date': '14 April',
      'progress': 70.0,
    },
    {
      "title": 'Real Estate App Design',
      'avatars': [
        "assets/images/Ellipse42.png",
        "assets/images/Ellipse43.png",
        "assets/images/Ellipse45.png",
      ],
      'Due Date': '20 July',
      'progress': 100.0,
    },
    {
      "title": 'Dashboard  & App Designs',
      'avatars': [
        "assets/images/Ellipse381.png",
        "assets/images/Ellipse38.png",
        "assets/images/Ellipse41.png",
      ],
      'Due Date': '20 June',
      'progress': 30.0,
    },
  ];
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232933),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 376,
                height: 47,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(color: Color(0xffFED36A)),
                        ),
                        Text(
                           '${Globalcredentials['name']?? 'Mamoon Khan'}' ,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'pilot',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 140),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen())) ;
                      },
                      child: CircleAvatar(
                        backgroundImage: const AssetImage(
                          'assets/images/Rectangle 6.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 250,
                    height: 58,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: const Color(0xff6F8793),
                        ),
                        labelText: 'Search Tasks',
                        labelStyle: TextStyle(color: const Color(0xff6F8793)),
                        filled: true,
                        fillColor: Color(0xff455A64),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(width: 15),
                  Container(
                    width: 55,
                    height: 55,
                    color: const Color(0xffFED36A),
                    child: Center(child: Icon(Icons.settings_outlined)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Completed Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 150),
                  Text(
                    'See all',
                    style: TextStyle(color: const Color(0xffFED36A)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 176,
                child: ListView.builder(
                  itemCount: tasks.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: task['color'],
                      ),
                      width: 250,
                      height: 176,
                      margin: EdgeInsets.only(right: 16),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text(
                            task['title'],
                            style: TextStyle(
                              fontFamily: 'pilot',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                'Team Members',
                                style: TextStyle(color: task['ttcolor']),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: SizedBox(
                                  height: 35,
                                  child: Stack(
                                    children: List.generate(
                                      task['avatars'].length,
                                      (index) {
                                        return Positioned(
                                          left: 25.0 * index,
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: AssetImage(
                                              task['avatars'][index],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Completed',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                '${(task['progress'] * 100).toStringAsFixed(0)}%',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: LinearProgressIndicator(
                              value: task['progress'],
                              minHeight: 3,
                              color: Colors.black, // progress color
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ongoning Projects',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('See All', style: TextStyle(color: Color(0xffFED36A))),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: SizedBox(
                  height: 320,
                  child: ListView.builder(
                    itemCount: Ongoingptojects.length,
                    itemBuilder: (context, index) {
                      final ongoingproject = Ongoingptojects[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TaskDetails(
                                progress: ongoingproject['progress'],
                                title: ongoingproject['title'],
                                Duedate: ongoingproject['Due Date'],
                                avatars: ongoingproject['avatars'],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 170,
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            color: Color(0xff455A64),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ongoingproject['title'],
                                      style: TextStyle(
                                        fontFamily: 'pilot',
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Team Members',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Expanded(
                                      child: SizedBox(
                                        height: 30,
                                        child: Stack(
                                          children: List.generate(
                                            ongoingproject['avatars'].length,
                                            (index) {
                                              return Positioned(
                                                left: 25.0 * index,
                                                child: CircleAvatar(
                                                  radius: 16,
                                                  backgroundImage: AssetImage(
                                                    ongoingproject['avatars'][index],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Due Date : ${ongoingproject['Due Date']}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 55,
                                child: Column(
                                  children: [
                                    SizedBox(height: 85),
                                    SizedBox(
                                      width: 55,
                                      height: 55,
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          CircularProgressIndicator(
                                            color: const Color(0xffFED36A),
                                            backgroundColor: Colors.white,
                                            strokeWidth: 1,
                                            value:
                                                ongoingproject['progress'] /
                                                100,
                                          ),
                                          Center(
                                            child: Text(
                                              "${ongoingproject['progress'].toInt()}%",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
