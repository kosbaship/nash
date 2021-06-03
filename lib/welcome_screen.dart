import 'package:flutter/material.dart';
import 'package:nash/colors.dart';
import 'package:nash/helper_methods.dart';
import 'package:nash/helper_widgets.dart';
import 'package:nash/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1420706/pexels-photo-1420706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
            ),
            SizedBox(
              height: 70.0,
            ),
            DefaultButton(
              elevation: 0,
              text: 'login',
              function: () => navigateTo(context, LoginScreen()),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: DefaultButton(
                elevation: 0,
                text: 'login',
                function: () => navigateTo(context, LoginScreen()),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            CaptionText(text: 'or login with ? '),
          ],
        ),
      ),
    );
  }
}
