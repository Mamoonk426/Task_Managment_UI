import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_managment_ui_copy/Screens/Calendar_Screen.dart';
import 'package:task_managment_ui_copy/Screens/CreateNewTask.dart';
import 'package:task_managment_ui_copy/Screens/Chat_Screen.dart';
import 'package:task_managment_ui_copy/Screens/Home_Screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_managment_ui_copy/Screens/Notifications_Screen.dart';

class Mainhub extends StatefulWidget {
  const Mainhub({super.key});

  @override
  State<Mainhub> createState() => _MainhubState();
}

class _MainhubState extends State<Mainhub> {
  int _selectedindex = 0;
  void navigate(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    ChatScreen() ,
    CalendarScreen(),
    NotificationsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232933),
      body: IndexedStack(
        index: _selectedindex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: 428,
        decoration: BoxDecoration(
          color: const Color(0xff263238),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: _buildnavitem('assets/images/home.png', 'Home', 0)) ,
            Expanded(
                flex: 1,
                child: _buildnavitem('assets/images/messages1.png', 'chat', 1)),
        InkWell(
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateTask_Screen())),
          child: Expanded(
            flex: 1,
            child: Container(
              width: 54,
              height: 54,
              color: Color(0xffFED36A),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/addsquare.png'),
              ),
            ),
          ),
        ),
            SizedBox(width: 4,),
            Expanded(
                flex: 1,
                child: _buildnavitem('assets/images/calendar.png', 'calendar', 2)) ,
            Expanded(
                flex: 1,
                child: _buildnavitem('assets/images/notification1.png', 'notifications', 3)) ,
            ]  )
    )
    );
  }
  Widget _buildnavitem (String asset , String label ,  int index){
    final _isselected = _selectedindex == index  ;
    return GestureDetector(
      onTap: ()=>navigate(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageIcon(AssetImage(asset),size: 28,
          color: _isselected? Color(0xffFED36A):Colors.grey,
          ) ,
          SizedBox(height: 4,) ,
          Text(label, style: TextStyle(
            fontSize: 12,
            color: _isselected ? const Color(0xffFED36A) : Colors.grey,
            fontWeight: _isselected ? FontWeight.w600 : FontWeight.normal,
          ),),
        ],
      ),

    ) ;

  }
}


