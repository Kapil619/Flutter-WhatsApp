import 'package:flutter/material.dart';

class UserInformationScreen extends StatelessWidget {
  static const String routeName = '/user-information';
  const UserInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/151'),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.add_a_photo))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
