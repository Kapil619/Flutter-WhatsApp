import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/common/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text('Enter your phone number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const Text('Whatsapp will need to to verify your phone number'),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text('Pick Country'),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text('+91'),
                const SizedBox(width: 10),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      hintText: 'phone number',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.6,
            ),
            SizedBox(
              width: 90,
              child: CustomButton(
                onPressed: () {},
                text: 'NEXT',
              ),
            )
          ],
        ),
      ),
    );
  }
}
