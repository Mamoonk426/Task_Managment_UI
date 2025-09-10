import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateTask_Screen extends StatefulWidget {
  const CreateTask_Screen({super.key});

  @override
  State<CreateTask_Screen> createState() => _CreateTask_ScreenState();
}

class _CreateTask_ScreenState extends State<CreateTask_Screen> {
  var time;
  var date;

  Future<void> settime(BuildContext context) async {
    final TimeOfDay? pickedtime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
    );
    if (pickedtime != null && pickedtime != time) {
      setState(() {
        time = pickedtime.format(context);
      });
    }
  }

  Future<void> selectdate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232933),
      appBar: AppBar(
        backgroundColor: Color(0xff232933),
        title: Text('Create New Task', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Task Title',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Container(
              width: 358,
              height: 48,
              color: Color(0xff455A64),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'HI-FI WireFrame',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Task Details',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 358,
              height: 82,
              color: Color(0xff455A64),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Add Team Members',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Color(0xff455A64)),
                    height: 41,
                    width: 131,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset('assets/images/Ellipse39.png', width: 25),
                          SizedBox(width: 10),
                          Text('Alex', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 28),
                          FaIcon(Icons.close, color: Colors.white, size: 20),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(color: Color(0xff455A64)),
                    height: 41,
                    width: 131,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/Ellipse381.png',
                            width: 25,
                          ),
                          SizedBox(width: 10),
                          Text('Maxi', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 28),
                          FaIcon(Icons.close, color: Colors.white, size: 20),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      color: Color(0xffFED36A),
                      width: 41,
                      height: 41,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset('assets/images/addsquare.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Time & Date',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => settime(context),
                          child: Container(
                            color: Color(0xffFED36A),
                            width: 41,
                            height: 41,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/images/clock.png',
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 41,
                          width: 112,
                          decoration: BoxDecoration(color: Color(0xff455A64)),
                          child: Center(
                            child: Text(
                              time == null ? '' : time,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => selectdate(context),
                          child: Container(
                            color: Color(0xffFED36A),
                            height: 41,
                            width: 41,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/images/calendar.png',
                                width: 24,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 114,
                          height: 41,
                          color: Color(0xff455A64),
                          child: Center(
                            child: Text(
                              date == null
                                  ? ''
                                  : '${date!.day}/${date!.month}/${date!.year}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                'Add New',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 458,
              height: 55,
              decoration: BoxDecoration(color: Color(0xffFED36A)),
              child: Center(
                child: Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
