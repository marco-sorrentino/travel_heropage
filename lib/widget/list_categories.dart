import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({super.key, required this.title, required this.banner});

  final String title;
  final String banner;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(banner),
                  fit: BoxFit.cover,
                  opacity: 0.88),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
