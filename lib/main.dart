import 'package:flutter/material.dart';
import 'package:helloworld/screens/upcomingevents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Upcoming Events',
      home: UpcomingEvents(),
    );
  }
}
