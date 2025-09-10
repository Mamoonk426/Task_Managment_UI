import 'package:flutter/material.dart';
import 'package:task_managment_ui_copy/Screens/Home_Screen.dart';
import 'package:task_managment_ui_copy/Screens/Login_Screen.dart';
import 'package:task_managment_ui_copy/Screens/NavbarHomeScreen.dart';
import 'package:task_managment_ui_copy/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Map<String,dynamic> creds = {} ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Init state running') ;
    router() ;
  }
  void router() async {
    await Future.delayed(Duration(seconds: 3));
    print('Navigating to Mainhub') ;
    if(mounted){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232933),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 375,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/bro.png'),
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Text(
                        'Day',
                        style: TextStyle(
                          fontFamily: 'pilot',
                          color:const Color(0xffFED36A),
                        ),
                      ),
                      Text(
                        'Task',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'pilot',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                  Image.asset('assets/images/Group.png') ,
                SizedBox(height: 30),
                Container(
                  height: 250,
                  width: 376,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Manage\nYour\nTask with',
                          style: TextStyle(
                            height: 1.02,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'pilot',
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'DayTask',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFED36A),
                            fontSize: 50,
                            fontFamily: 'pilot',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Mainhub())) ;
                  },
                  child: Container(
                    color: const Color(0xffFED36A),
                    height: 55,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 116.0, top: 15),
                      child: Text(
                        'Let'
                            's Start',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
