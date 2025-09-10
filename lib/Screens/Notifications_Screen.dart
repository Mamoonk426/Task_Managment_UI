import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<Map<String, dynamic>> projectInfo = [
    {
      "avatar": 'assets/images/Ellipse37.png',
      "project": 'Mobile App Design Project',
      "name": 'Olivia Anna',
      "comment": 'left a comment in task',
      "time": '31 min',
    },
    {
      "avatar": 'assets/images/Ellipse43.png',
      "project": 'Mobile App Design Project',
      "name": 'Robert Brown',
      "comment": 'left a comment in task',
      "time": '31 min',
    },
    {
      "avatar": 'assets/images/Ellipse42.png',
      "project": 'Mobile App Design Project',
      "name": 'Sophia',
      "comment": 'left a comment in task',
      "time": '31 min',
    },
    {
      "avatar": 'assets/images/Ellipse41.png',
      "project": 'Mobile App Design Project',
      "name": 'Anna',
      "comment": 'left a comment in task',
      "time": '31 min',
    },
    {
      "avatar": 'assets/images/Ellipse40.png',
      "project": 'Mobile App Design Project as in process',
      "name": 'Robert Brown',
      "comment": 'marked the task',
      "time": '4 hours',
    },
    {
      "avatar": 'assets/images/Ellipse38.png',
      "project": 'Mobile App Design Project',
      "name": 'Sophia',
      "comment": 'left a comment in task',
      "time": '31 min',
    },
    {
      "avatar": 'assets/images/Ellipse381.png',
      "project": 'Mobile App Design Project',
      "name": 'Anna',
      "comment": 'left a comment in task',
      "time": '31 min',
    },
  ];

  List<Map<String,dynamic>> notification = [
    {
      'name' : 'Mamoon Khan' ,
      'avatar'  : 'assets/images/Ellipse381.png' ,
      'Comment' : 'left comment in task',
      'Project' : 'Mobile App design Project' ,
      'time' : '4 hours'
    } ,
    {
      'name' : 'Azlan Khan' ,
      'avatar'  : 'assets/images/Ellipse47.png' ,
      'Comment' : 'left comment in task',
      'Project' : 'Mobile App design Project' ,
      'time' : '32 min'
    } ,
    {
      'name' : 'Zohan Afridi' ,
      'avatar'  : 'assets/images/Ellipse49.png',
      'Comment' : 'left comment in task',
      'Project' : 'Mobile App design Project' ,
      'time' : '10 min'
    } ,
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        centerTitle: true,
        backgroundColor: Color(0xff232933),
        title: Text('Notifications', style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Color(0xff232933),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 288,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'New',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 8),
                  Expanded(
                    child: ListView.builder(
                      itemCount: projectInfo.length,
                      itemBuilder: (context, index) {
                        final projectdet = projectInfo[index];
                        return Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                  backgroundImage: AssetImage(
                                    projectdet['avatar'],
                                  ),
                                ),
                              SizedBox(width: 8,) ,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          projectdet['name'],
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(width: 4,) ,
                                        Text(projectdet['comment'],
                                          style: TextStyle(color: Color(0xff8CAAB9),fontSize: 12),),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(projectdet['project'],
                                        style: TextStyle(color: Color(0xffFED36A),fontSize: 12),),
                                    )
                                  ],
                                ),
                              ),

                              Text(projectdet['time'],style: TextStyle(color: Colors.white,fontSize: 10),),

                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 288,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Earlier',
                      style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                  SizedBox(height: 5,),
                  Expanded(
                      child: ListView.builder(
                          itemCount: notification.length,
                          itemBuilder: (context , index){
                           final notifications = notification[index] ;
                           return Container(
                             margin: EdgeInsets.only(bottom: 12),
                             child: Row(
                               children: [
                                 CircleAvatar(
                                   backgroundImage: AssetImage(
                                     notifications['avatar'],
                                   ),
                                 ),
                                 SizedBox(width: 10),
                                 Expanded(
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Row(
                                         children: [
                                           Align(
                                             alignment : Alignment.topLeft ,
                                             child: Text(
                                               notifications['name']??'',
                                               style: TextStyle(color: Colors.white),
                                             ),
                                           ),
                                           SizedBox(width: 7,),
                                           Text(notifications['Comment'],
                                             style: TextStyle(color: Color(0xff8CAAB9),fontSize: 12),),
                                         ],
                                       ),
                                       Align(
                                         alignment: Alignment.topLeft,
                                         child: Text(notifications['Project']??'',
                                           style: TextStyle(color: Color(0xffFED36A),fontSize: 12),),
                                       )
                                     ],
                                   ),
                                 ),
                                 Text(notifications['time'],style: TextStyle(color: Colors.white,fontSize: 10),)
                               ],
                             ),
                           );
                  })
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
