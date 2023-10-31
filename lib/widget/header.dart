import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_heropage/widget/popular_places.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(context) {
    return Column(
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
        CupertinoTextField(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
          placeholder: "Find things to do",
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 236, 246),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const PopularPlaces(),
      ],
    );
  }
}
