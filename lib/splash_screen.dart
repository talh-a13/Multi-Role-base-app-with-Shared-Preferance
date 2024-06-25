import 'package:flutter/material.dart';
import 'package:flutter_application_multi_role_baseapp_sharedpreferance/home-screen.dart';
import 'package:flutter_application_multi_role_baseapp_sharedpreferance/login_screen.dart';
import 'package:flutter_application_multi_role_baseapp_sharedpreferance/student_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    super.initState();
    islogin();
  }

  void islogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool islogin = sp.getBool('islogin') ?? false;
    String? userType = sp.getString('userType');
    if (islogin) {
      if (userType == 'Student') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const studentscreen()));
      }else
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const homescreen()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const login()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
          height: double.infinity,
          fit: BoxFit.fill,
          image: NetworkImage(
              'https://images.pexels.com/photos/26159411/pexels-photo-26159411/free-photo-of-a-street-with-cars-parked-in-front-of-buildings.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
    );
  }
}
