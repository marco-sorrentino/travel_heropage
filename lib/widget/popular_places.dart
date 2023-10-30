import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_heropage/models/categories.dart';
import 'package:travel_heropage/models/places.dart';
import 'package:travel_heropage/widget/list_categories.dart';
import 'package:travel_heropage/widget/list_places.dart';

class PopularPlaces extends StatefulWidget {
  const PopularPlaces({super.key});

  @override
  State<PopularPlaces> createState() {
    return _PopularPlacesState();
  }
}

class _PopularPlacesState extends State<PopularPlaces> {
  final List<Places> placesList = [
    Places(
      id: 01,
      img:
          "https://mir-s3-cdn-cf.behance.net/projects/404/1d5deb138484117.Y3JvcCw0MDQ3LDMxNjYsMzAwLDIxNTQ.jpg",
      destination: "Paris",
      rating: 4.6,
    ),
    Places(
      id: 02,
      img:
          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b0d15610287675.560e2767b19ef.jpg",
      destination: "New York",
      rating: 4.8,
    ),
  ];

  final List<Categories> categoriesList = [
    const Categories(
      id: 01,
      banner:
          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/c8b46e59165603.5a1777acb0745.jpg",
      title: "Mountain",
    ),
    const Categories(
      id: 02,
      banner:
          "https://img.freepik.com/premium-vector/woodland-forest-landscape-with-trees_313877-12378.jpg",
      title: "Forest",
    ),
    const Categories(
      id: 03,
      banner:
          "https://img.freepik.com/free-vector/blue-sea-waves-lighthouse-sky-clouds-illustration_1284-53987.jpg",
      title: "Sea",
    )
  ];

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 25,
        ),
        Text(
          "Popular Places",
          style: GoogleFonts.montserrat(
            fontSize: 40,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 270,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: placesList.length,
            itemBuilder: (context, index) {
              var indexer = placesList[index];
              return ListPlaces(
                destination: indexer.destination,
                img: indexer.img,
                rating: indexer.rating,
              );
            },
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          "Categories",
          style: GoogleFonts.montserrat(
            fontSize: 40,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (context, index) {
              final categories = categoriesList[index];
              return ListCategories(
                  title: categories.title, banner: categories.banner);
            },
          ),
        )
      ],
    );
  }
}
