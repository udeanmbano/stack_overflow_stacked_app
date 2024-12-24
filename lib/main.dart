import 'package:flutter/material.dart';
import 'app/app.locator.dart';
import 'ui/views/home/home_view.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stack Overflow Search',
      home: const HomeView(),
    );
  }
}
