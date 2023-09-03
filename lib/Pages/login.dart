// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pop(context);
      }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/main_top.png",
                  width: 120,
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Myfont",
                  ),
                ),
              ],
            ),
            SvgPicture.asset("assets/icons/login.svg"),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: Color(0xffe2d3f5),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your Email',
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Myfont",
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xff6f35a5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: Color(0xffe2d3f5),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your Password',
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Myfont",
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 20,
                    color: Color(0xff6f35a5),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_sharp,
                    size: 20,
                    color: Color.fromARGB(255, 133, 107, 158),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Myfont",
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color(0xff6f35a5),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                ),
              ),
            ),
            Container(
              height: 220,
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
