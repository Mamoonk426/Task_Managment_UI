import 'package:flutter/material.dart';
import 'package:task_managment_ui_copy/Screens/NavbarHomeScreen.dart';
import 'package:task_managment_ui_copy/Screens/Splash_Screen.dart';


 void main()async{
WidgetsFlutterBinding.ensureInitialized() ;
  runApp(MYAPP()) ;
 }
 class MYAPP extends StatelessWidget {
  const MYAPP({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    ) ;
  }
}