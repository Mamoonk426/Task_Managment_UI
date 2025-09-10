import 'package:flutter/material.dart';

class ContactChatScreen extends StatefulWidget {
  ContactChatScreen({super.key, required this.avatar, required this.name});

  String avatar;

  String name;

  @override
  State<ContactChatScreen> createState() => _ContactChatScreenState();
}

class _ContactChatScreenState extends State<ContactChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232933),
      appBar: AppBar(
        backgroundColor: Color(0xff232933),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(backgroundImage: AssetImage(widget.avatar)),
              SizedBox(width: 10),
              Container(
                width: 77,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        widget.name,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Online',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 24,
              height: 24,
              child: Image.asset('assets/images/video.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 24,
              height: 24,
              child: Image.asset('assets/images/callcalling.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 47,
              width: 268,
              color: Color(0xff263238),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Hi, please check the new task.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 268,
              height: 47,
              color: Color(0xffFED36A),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Yeah, I have chcek it.', style: TextStyle(fontSize: 15),),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 267,
              height: 47,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Got it,Thanks',
                  style: TextStyle(color: Colors.white, fontSize: 15),),
              ),
              color: Color(0xff263238),
            ),
          ),
          SizedBox(height: 30,),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 267,
              height: 67,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Hi, please check the last task, that I have completed'
                    ,style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
                color: Color(0xff263238),
              ),
            ),
              SizedBox(height: 20,) ,
              Align(alignment: Alignment.topLeft,
              child: Container(
                   width: 268,
                  height: 147,
                  child: Image.asset('assets/images/Maskgroup.png',width: 268,height: 146,)),
              ) ,
              SizedBox(height: 30,) ,
              Align(alignment: Alignment.topRight,
                child:Container(
                  width: 268,
                height: 47,
                color: Color(0xffFED36A),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Got it. Will check it soon',style: TextStyle(fontSize: 15),),
                ),
              ),
              ) ,
            ],
          ),
        ),
      ),
        bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0 ,right: 5,bottom: 8),
              child: Container(
                width:420 ,
                height: 65,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Container(
                      color: Color(0xff263238),
                      width: 300,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image.asset(
                              'assets/images/elementequal.png',
                              width: 24,
                              height: 24,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            flex: 3,
                            child: TextFormField(
                              cursorColor: Colors.yellow,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 20 ),
                                hintText: 'Type a new message',
                                hintStyle: const TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: const Color(0xff263238),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Image.asset('assets/images/send.png',width: 24,height: 24,)) ,
                        ],
                      ),
                    ) ,
                    SizedBox(width: 10,) ,
                    Container(
                      height: 50,
                      width: 40,
                      color: Color(0xff263238),
                      child: Image.asset('assets/images/microphone2.png',height: 24,width: 24,),
                    )
                  ],
                ),
              ),
            ) ,
        )
    );
  }
}
