import 'package:flutter/material.dart';
import 'package:task_managment_ui_copy/Screens/Chats_Screen.dart';
import 'package:task_managment_ui_copy/Screens/Groupchat_Screen.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232933),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_back, color: Colors.white),
                  Text("Messages", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Icon(Icons.edit, color: Colors.white),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedIndex = 0),
                      child: Container(
                        height: 47,
                        decoration: BoxDecoration(
                          color: _selectedIndex == 0
                              ? const Color(0xffFED36A)
                              : const Color(0xff263238),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Center(
                          child: Text("Chat", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedIndex = 1),
                      child: Container(
                        height: 47,
                        decoration: BoxDecoration(
                          color: _selectedIndex == 1
                              ? const Color(0xffFED36A)
                              : const Color(0xff263238),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Center(
                          child: Text("Groups", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: _selectedIndex == 0
                    ?ChatsScreen ()
                    : GroupchatScreen()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
