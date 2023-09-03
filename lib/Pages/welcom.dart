// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/main_top.png",
                width: 120,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Welcom to AQ application',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Myfont",
                ),
              ),
            ],
          ),
          SvgPicture.asset("assets/icons/chat.svg"),
          SizedBox(
            height: 70,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
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
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                fontFamily: "Myfont",
                color: Colors.black,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xffe2d3f5),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 90, vertical: 10),
              ),
            ),
          ),
          Container(
            height: 142,
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}
