import 'package:flutter/material.dart';

class CalendarItemServices extends StatefulWidget {
  CalendarItemServices({
    super.key,
    required this.allDaysTasks,
    required this.Dayno,
  });

  Map<String, List<Map<String, dynamic>>> allDaysTasks = {};
 final String? Dayno;

  @override
  State<CalendarItemServices> createState() => _CalendarItemServicesState();
}

class _CalendarItemServicesState extends State<CalendarItemServices> {
  int ? selectedindex  ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 400,
          child: ListView.builder(
            itemCount: widget.allDaysTasks[widget.Dayno]!.length,
            itemBuilder: (context, index) {
              final alldaytask = widget.allDaysTasks[widget.Dayno]!;
              final isselected = selectedindex == index ;
              final task =  alldaytask[index] ;
              return GestureDetector(
                onTap: ()=> setState(() {
                  selectedindex = index ; 
                }) ,
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  height: 72,
                  child: Stack(
                    children: [
                      Container(
                        height: 72,
                        child: LinearProgressIndicator(
                          value: task['progress'] ,
                          color: Color(0xffFED36A),
                          backgroundColor: Color(0xff263238),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        right: 10,
                        bottom: 10,
                        top: 10,
                        child: Container(
                          height: 72,
                          child: Row(
                            children: [
                              Expanded(
                                flex : 3 ,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Text(
                                        alldaytask[index]['title'],
                                        style: TextStyle(
                                          color:isselected ? Colors.black : Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      alldaytask[index]['time'],
                                      style: TextStyle(
                                        color: isselected ? Colors.black : Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                               Expanded(
                                 flex: 1,
                                 child: Column(
                                   children: [
                                 SizedBox(height: 35,
                                     width: 90,
                                     child: Stack(
                                    children: List.generate(alldaytask[index]['avatars'].length, (avatarindex){
                                      return Positioned(
                                          left: 20.0 * avatarindex,
                                          child: CircleAvatar(
                                            child: Image.asset(alldaytask[index]['avatars'][avatarindex],),
                                            radius: 14,
                                          )
                                      ) ;
                                    }),
                                     ),
                                   ),
                                   ] ,),
                               ),
                        ]),
                      ),
                      )],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
