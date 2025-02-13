import 'package:flutter/material.dart';

import 'home_page/alarm_set/time_setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      // home: const SignUpScreen(),
      // home: const MailLoginScreen(),
      home: const TimeSettingScreen(),
      //   home: CustomBottomNavigationBar(),
      // home: const AlarmAdditionScreen(),
    );
  }
}
