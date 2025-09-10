import 'package:flutter/material.dart';

class TaskDetails extends StatefulWidget {
  TaskDetails({
    super.key,
    required this.title,
    required this.Duedate,
    required this.avatars,
    required this.progress,
  });

  double? progress;
  String? title;
  String? Duedate;
  List<String> avatars = [];

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  List<Map<String, dynamic>> alltaskDetails = [
    {'title': 'User Interviews', 'status': 'Done'},
    {'title': 'Wireframes', 'status': 'Done'},
    {'title': 'Design System', 'status': 'Done'},
    {'title': 'Icons', 'status': 'Not Done'},
    {'title': 'Final Mockups', 'status': 'Done'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212832),
      appBar: AppBar(
        backgroundColor: Color(0xff212832),
        title: Text('Task Details', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${widget.title}',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'pilot',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Color(0xffFED36A),
                    width: 40,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/calendarremove.png'),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Due Date\n',
                        style: TextStyle(color: Color(0xff8CAAB9)),
                      ),
                      TextSpan(
                        text: '${widget.Duedate}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 80),
                Container(
                  width: 40,
                  height: 40,
                  color: Color(0xffFED36A),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/profile2user.png'),
                  ),
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Project Team',
                      style: TextStyle(color: Color(0xff8CAAB9), fontSize: 12),
                    ),
                    SizedBox(height: 3),
                    SizedBox(
                      width: 75,
                      height: 30,
                      child: Stack(
                        children: List.generate(widget.avatars.length, (index) {
                          return Positioned(
                            left: 19.0 * index,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(
                                widget.avatars[index],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Project Details',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, when anunknown printer took a galley of type and scrambled ',
              style: TextStyle(color: Color(0xffBCCFD8)),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Text(
                  'Project Progress',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(width: 98),
                SizedBox(
                  width: 59,
                  height: 59,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: widget.progress! / 100,
                        strokeWidth: 2.0,
                        backgroundColor: Color(0xff2C4653),
                        color: Color(0xffFED36A),
                      ),

                      Center(
                        child: Text(
                          '${widget.progress!.toStringAsFixed(0)}%',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'All Tasks',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: alltaskDetails.length,
                itemBuilder: (context, index) {
                  final Taskdet = alltaskDetails[index];
                  final done = Taskdet['status'] == 'Done' ;
                  return Container(
                    color: Color(0xff455A64),
                    margin: EdgeInsets.only(bottom: 10),
                    height: 58,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Taskdet['title'],
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            color: Color(0xffFED36A),
                            child: Center(
                              child:done ? Image.asset('assets/images/tickcircle.png') : Image.asset('assets/images/tickcircle1.png') ,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
