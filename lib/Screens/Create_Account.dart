import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_managment_ui_copy/Screens/Login_Screen.dart';
import 'package:task_managment_ui_copy/Screens/utils.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _rememberme = false;
 final password = TextEditingController() ;
 final name = TextEditingController() ;
 final email = TextEditingController() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff232933),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 91,
                          width: 139,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/bro.png',
                                width: 91,
                                height: 60,
                              ),
                              Container(
                                width: 139,
                                height: 23,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Day',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'pilot',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                      'Task',
                                      style: TextStyle(
                                        color: Color(0xffFED36A),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'pilot',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Create Your Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Full Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xff8CAAB9),
                        ),
                      ),
                      SizedBox(height: 4),
                      TextFormField(
                        controller: name,
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff455A64),
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Icon(Icons.person, color: Colors.white70),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Email Address',
                        style: TextStyle(
                          color: Color(0xff8CAAB9),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: email,
                        cursorColor: Colors.white
                        ,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          letterSpacing: 1.0,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_pin_outlined,
                            color: Colors.white70,
                          ),
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Color(0xff455A64),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Password',
                        style: TextStyle(
                          color: Color(0xff8CAAB9),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: password,
                        cursorColor: Colors.white,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                        obscuringCharacter: '.',
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_clock_outlined,
                            color: Colors.white70,
                          ),
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Color(0xff455A64),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _rememberme = !_rememberme;
                                    });
                                  },
                                  child: Container(
                                    child: _rememberme? Center(
                                      child: SvgPicture.asset(
                                        'assets/images/icons8-tick.svg',
                                        color: Color(0xffFED36A) ,
                                        width: 16,
                                        height: 16,
                                      ),
                                    ) : null ,
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.transparent,
                                      border: Border.all(color: Color(0xffFED36A)),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                RichText(text: TextSpan(
                                  style: TextStyle(color: Color(0xff8CAAB9),fontSize: 12),
                                  text: 'I have read & agreed to DayTask ',
                                  children: [
                                    TextSpan(
                                      style: TextStyle(
                                        color: Color(0xffFED36A),fontSize: 12
                                      ),
                                      text: 'Privacy Policy,'
                                    )
                                  ]
                                ))
                                    ],),
                                Padding(
                                  padding: const EdgeInsets.only(left: 38.0),
                                  child: Text('Terms & Conditions',style: TextStyle(color: Color(0xffFED36A),fontSize: 12),),
                                ),
                                SizedBox(height: 10),
                                InkWell(
                                  onTap: (){
                                    Credentialsstorer(password, email, name) ;
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())) ;
                                  },
                                  child: Container(
                                    color: Color(0xffFED36A),
                                    height: 55,
                                    width: 376,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 120.0 ,top: 17),
                                      child: Text(
                                        'Sign Up',style: TextStyle(fontWeight: FontWeight.bold ,),),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,) ,
                                Row(
                                  children: [
                                    Container(color: Colors.grey,width: 80,height: 2,) ,
                                    SizedBox(width: 19,),
                                    Text('or Continue with',style: TextStyle(color: Colors.white),) ,
                                    SizedBox(width: 19) ,
                                    Container(color: Colors.grey,width: 80,height: 2,) ,
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  height: 55,
                                  width: 376,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white,width: 2) ,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset('assets/images/icons8-google.svg',color: Colors.grey,),
                                      SizedBox(width: 5,),
                                      Text('Google',style: TextStyle(color: Colors.white),) ,
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Already have an Account?',
                                      style: TextStyle(color: Color(0xff8CAAB9)),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginScreen(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Log In',
                                        style: TextStyle(color: Color(0xffFED36A)),
                                      ),
                                    ),
                                  ],
                                ),
                              ])
                            ),
              ),
        ) );
  }
}