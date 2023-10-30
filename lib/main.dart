import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_heropage/widget/popular_places.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 45, 15, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: GoogleFonts.montserrat(fontSize: 20),
                    ),
                    Text(
                      "Marco Sorrentino",
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        letterSpacing: -2.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CupertinoSearchTextField(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      placeholder: "Find things to do",
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 236, 246),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    const PopularPlaces(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
