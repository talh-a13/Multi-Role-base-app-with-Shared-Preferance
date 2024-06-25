import 'package:flutter/material.dart';
import 'package:flutter_application_multi_role_baseapp_sharedpreferance/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class studentscreen extends StatefulWidget {
  const studentscreen({super.key});

  @override
  State<studentscreen> createState() => _studentscreenState();
}

class _studentscreenState extends State<studentscreen> {
  void initState() {
    loaddata();
  }

  String email = '', age = '', type = '';

  loaddata() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email')!;
    age = sp.getString('age')!;
    type = sp.getString('userType')!;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Student Screen '),
            Row(
              children: [
                Text('Email :  '),
                Text(email.toString()),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('Age:'),
                Text(age.toString())
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [Text('Type: '), Text(type.toString())],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const login()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: const Center(
                  child: Text('Log Out'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
