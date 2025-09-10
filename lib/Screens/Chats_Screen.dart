import 'package:flutter/material.dart';
import 'package:task_managment_ui_copy/Screens/Contact_Chat_Screen.dart';
import 'package:task_managment_ui_copy/Screens/New_Message_Screen.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final List<Map<String, dynamic>> chatList = [
    {
      "name": "Olivia Anna",
      "message": "Hi, please check the last task, that",
      "time": "31 min",
      "avatar": "assets/images/Ellipse38.png",
      "unread": true,
    },
    {
      "name": "Emna",
      "message": "Hi, please check the last task, that",
      "time": "43 min",
      "avatar": "assets/images/Ellipse43.png",
      "unread": true,
    },
    {
      "name": "Robert Brown",
      "message": "Hi, please check the last task, that",
      "time": "6 Nov",
      "avatar": "assets/images/Ellipse41.png",
      "unread": false,
    },
    {
      "name": "James",
      "message": "Hi, please check the last task, that",
      "time": "8 Dec",
      "avatar": "assets/images/Ellipse39.png",
      "unread": false,
    },
    {
      "name": "Sophia",
      "message": "Hi, please check the last task, that",
      "time": "27 Dec",
      "avatar": "assets/images/Ellipse45.png",
      "unread": false,
    },
    {
      "name": "Isabella",
      "message": "Hi, please check the last task, that",
      "time": "31 min",
      "avatar": "assets/images/Ellipse381.png",
      "unread": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232933),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                final chatlists = chatList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactChatScreen(
                          avatar: chatlists['avatar'],
                          name: chatlists['name'],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(chatlists['avatar']),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 4,
                          child: RichText(
                            text: TextSpan(
                              text: chatlists['name'],
                              style: TextStyle(color: Colors.white),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\n ${chatlists['message']}',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 7),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                chatlists['time'],
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.circle,
                                color: chatlists['unread']
                                    ? Color(0xffFED36A)
                                    : Colors.transparent,
                                size: 9,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 158.0),
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewMessageScreen()),
              ),
              child: Container(
                color: Color(0xffFED36A),
                width: 155,
                height: 55,
                child: Center(child: Text('Start Chat')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
