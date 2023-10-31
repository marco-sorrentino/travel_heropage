import 'package:flutter/material.dart';
import 'package:travel_heropage/widget/header.dart';
import 'package:travel_heropage/widget/nav_bottom.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color.fromRGBO(238, 240, 255, 1),
            ],
          ),
        ),
        child: const Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 45, 15, 0),
              child: Header(),
            ),
          ),
          bottomNavigationBar: NavBottom(),
        ),
      ),
    );
  }
}
