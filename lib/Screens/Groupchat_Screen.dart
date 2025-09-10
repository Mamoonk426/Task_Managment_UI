import 'package:flutter/material.dart';

class GroupchatScreen extends StatefulWidget {
  const GroupchatScreen({super.key});

  @override
  State<GroupchatScreen> createState() => _GroupchatScreenState();
}

class _GroupchatScreenState extends State<GroupchatScreen> {
  int selected1 = 0 ;
  final List<Map<String, dynamic>> Groupslist = [
    {
      "avatar": "assets/images/Ellipse381.png",
      "title": "Android Developer",
      "subtitle": "Robert: Did you check the last task?",
      "time": "15:35",
    },
    {
      "avatar": "assets/images/Ellipse39.png",
      "title": "IOS Developer",
      "subtitle": "Robert: Did you check the last task?",
      "time": "15:35",
    },
    {
      "avatar": "assets/images/Ellipse37.png",
      "title": "Web Developer",
      "subtitle": "Robert: Did you check the last task?",
      "time": "15:35",
    },
    {
      "avatar": "assets/images/Ellipse41.png",
      "title": "Back-End Team",
      "subtitle": "Robert: Did you check the last task?",
      "time": "15:35",
    },
    {
      "avatar": "assets/images/Ellipse42.png",
      "title": "Front-End Team",
      "subtitle": "Robert: Did you check the last task?",
      "time": "15:35",
    },
    {
      "avatar": "assets/images/Ellipse43.png",
      "title": "Android Developer",
      "subtitle": "Robert: Did you check the last task?",
      "time": "15:35",
    },
    {
      "avatar": "assets/images/Ellipse37.png",
      "title": "Personal Project",
      "subtitle": "Robert: Did you check the last task?",
      "time": "15:35",
    },
    {
      "avatar": "assets/images/Ellipse38.png",
      "title": "School System Project",
      "subtitle": "Robert: Did you check the last task?",
      "time": "15:35",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff232933),
        body: SafeArea(child:
        Padding(
          padding: const EdgeInsets.all(00.0),
          child: Column(
            children: [
              Expanded(
                child:
                ListView.builder(
                    itemCount: Groupslist.length,
                    itemBuilder: (context ,index){
                      final chatinfo  = Groupslist[index] ;
                      return Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(chatinfo['avatar']),
                            ),
                            SizedBox(width: 10,) ,
                            Expanded(
                              child: RichText(text: TextSpan(
                                  text: chatinfo['title'] ,
                                  style: TextStyle(color: Colors.white) ,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '\n ${chatinfo['subtitle']}',
                                        style: TextStyle(color: Colors.grey)
                                    )
                                  ]
                              ) ,
                              ),
                            ),
                            SizedBox(width: 7,) ,
                            Text(chatinfo['time'],style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ) ;
                    }) ,
              ) ,
            ],
          ),
        ),
        )
    );

  }
}
