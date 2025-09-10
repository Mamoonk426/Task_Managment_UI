import 'package:flutter/material.dart';

class NewMessageScreen extends StatefulWidget {
  const NewMessageScreen({super.key});

  @override
  State<NewMessageScreen> createState() => _NewMessageScreenState();
}
class _NewMessageScreenState extends State<NewMessageScreen> {
  List<Map<String, String>> contactinfo = [
    {"name": "Alice Johnson", "avatar": "assets/images/Ellipse38.png"},
    {"name": "Bob Smith", "avatar": "assets/images/Ellipse39.png"},
    {"name": "Charlie Davis", "avatar": "assets/images/Ellipse40.png"},
    {"name": "Diana Roberts", "avatar": "assets/images/Ellipse41.png"},
    {"name": "Ethan Brown", "avatar": "assets/images/Ellipse42.png"},
    {"name": "Fiona Wilson", "avatar": "assets/images/Ellipse43.png"},
    {"name": "George Clark", "avatar": "assets/images/Ellipse3.png"},
    {"name": "Hannah Lewis", "avatar": "assets/images/Ellipse36.png"},
    {"name": "Ian Thompson", "avatar": "assets/images/Ellipse37.png"},
    {"name": "Julia White", "avatar": "assets/images/Ellipse381.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff232933),
        title: Text('Message', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff232933),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Color(0xffFED36A),
                      borderRadius: BorderRadius.circular(19)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/profile2user.png',width:24 ,height: 24,),
                  ),
                ),
                SizedBox(width: 15,) ,
                Text('Create Group',style: TextStyle(color: Colors.white,fontSize: 15),) ,
                SizedBox(height: 30,) ,
              ],
            ),
            SizedBox(height: 30,),
            Expanded(
              child: ListView.builder(
                  itemCount: contactinfo.length,
                  itemBuilder: (context ,index){
                    final contactinfos = contactinfo[index] ;
                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('${contactinfos['avatar']}'),
                          ) ,
                          SizedBox(width: 20,) ,
                          Text('${contactinfos['name']}',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ) ;
                  }),
            )
          ],
        ),
      ),
    );
  }
}
