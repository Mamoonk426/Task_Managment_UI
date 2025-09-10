import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_managment_ui_copy/Screens/Create_Account.dart';
import 'package:task_managment_ui_copy/Screens/NavbarHomeScreen.dart';
import 'package:task_managment_ui_copy/Screens/utils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final password = TextEditingController();
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232933),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
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
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Email Address',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xff8CAAB9),
                ),
              ),
              SizedBox(height: 4),
              TextFormField(
                controller: email,
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff455A64),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: Icon(
                    Icons.person_pin_outlined,
                    color: Colors.white70,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Passsword',
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
              SizedBox(height: 5),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color(0xff8CAAB9)),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login Successfully'),backgroundColor: Color(0xff232933),)) ;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Mainhub(),
                    ),
                  );
                },
                child: Container(
                  width: 376,
                  height: 60,
                  decoration: BoxDecoration(color: Color(0xffFED36A)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      'Log In',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(width: 100, height: 2, color: Colors.grey),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'or Continue with',
                      style: TextStyle(color: Color(0xff8CAAB9)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(width: 100, height: 2, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: 376,
                height: 67,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/icons8-google.png',
                      width: 24,
                      height: 24,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text('Google', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont Have an Account?',
                    style: TextStyle(color: Color(0xff8CAAB9)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateAccount(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xffFED36A)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
