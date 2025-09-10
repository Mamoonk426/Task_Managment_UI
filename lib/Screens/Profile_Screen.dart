import 'package:flutter/material.dart';
import 'package:task_managment_ui_copy/Screens/Login_Screen.dart';
import 'package:task_managment_ui_copy/Screens/utils.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key,});
  @override
  Widget build(BuildContext context) {
    List <Map<String,dynamic>> accountinfo  = [
      {
        'title'  :  Globalcredentials['name']?? 'Mamoon Khan',
        'image'  : 'assets/images/useradd.png' ,
        'image2'  : 'assets/images/edit2.png'
    } ,
      {
        'title' : Globalcredentials['email'] ?? 'mamoonk412@gmail.com' ,
        'image'  : 'assets/images/usertag.png' ,
        'image2'  : 'assets/images/edit2.png'
      } ,
      {
        'title' : 'Password' ,
        'image' : 'assets/images/lock.png' ,
        'image2'  : 'assets/images/edit2.png'
      } ,
      {
        'title' : 'My Tasks' ,
        'image'  : 'assets/images/task.png' ,
        'image2' : 'assets/images/arrowdown2.png'

      } ,
      {
        'title' : 'Privacy' ,
        'image' : 'assets/images/securitycard.png' ,
        'image2' : 'assets/images/arrowdown2.png'
      } ,
      {
        'title' : 'Setting' ,
        'image' : 'assets/images/setting2.png' ,
        'image2' : 'assets/images/arrowdown2.png'
      } ,


    ] ;
    return Scaffold(
      backgroundColor: Color(0xff232933),
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xff232933),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90.0),
              child: SizedBox(
                width: 130,
                height: 130,
                child: Stack(
                  children: [
                    Container(
                      height: 127,
                      width: 127,
                      decoration: BoxDecoration(
                        color: Colors.transparent ,
                        border: Border.all(
                          color: Color(0xffFED36A) ,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(100)
                      ),
                    ) ,
                     Positioned(
                         top: 7,
                         left: 8,
                         bottom: 10,
                         right: 10,
                         child: Image.asset('assets/images/Ellipse38.png')),
                    Positioned(
                        left: 100,
                        top: 80,
                        child: Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            color: Color(0xff232933),
                            borderRadius: BorderRadius.circular(100),
                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/addsquare.png',width: 20,height: 20,),
                            )))
                  ],
                ),
              ),
            ),
            SizedBox(height: 40,) ,
            SizedBox(
              height: 440,
              child: ListView.builder(
                  itemCount: accountinfo.length,
                  itemBuilder: (context ,index){
                    final det  = accountinfo[index]  ;
                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 54,
                  color: Color(0xff455A64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(det['image'],width: 24,height: 24,) ,
                              SizedBox(width: 15,),
                              Text(det['title'],style: TextStyle(color: Colors.white,fontSize: 15),)
                            ],
                          ),
                        ),
                      ) ,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(det['image2'],width: 24,height: 24,),
                      )
                    ],
                  ),
                ) ;
              }),
            ) ,
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())) ;
              },
              child: Container(
                color: Color(0xffFED36A),
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logoutcurve.png',width: 24,height: 24,) ,
                    SizedBox(width: 5,) ,
                    Text('Logout')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
