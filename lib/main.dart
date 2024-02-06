import 'package:flutter/material.dart';
import 'package:whatsapp/screens/mobile_layout_screen.dart';
import 'package:whatsapp/screens/web_layout_screen.dart';
import 'utils/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp Clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xFF101010),
        ),
        home: const ResponsiveLayout(
          mobileScreenLayout: MobileLayoutScreen(),
          webScreenLayout: WebLayoutScreen(),
        ));
  }
}
