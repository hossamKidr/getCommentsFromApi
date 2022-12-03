import 'package:flutter/material.dart';
import 'package:get_comments_from_api/home_view/home_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'All Comments',
      home: HomeView(),
    );
  }
  
}
