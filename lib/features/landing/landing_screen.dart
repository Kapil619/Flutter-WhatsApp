import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/common/widgets/custom_button.dart';
import 'package:whatsapp/features/auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginSceen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Welcome to Whatsapp',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: size.height / 9),
            Image.asset(
              'assets/bg.png',
              height: 340,
              width: 340,
              color: tabColor,
            ),
            SizedBox(height: size.height / 9),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: greyColor,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: size.width * 0.75,
                child: CustomButton(
                    onPressed: () => navigateToLoginSceen(context),
                    text: 'AGREE AND CONTINUE'))
          ],
        ),
      ),
    );
  }
}
