import 'package:flutter/material.dart';
import 'package:news_app/model/cards.dart';
import 'package:news_app/screens/businesspage.dart';
import 'package:news_app/screens/entertaimentpage.dart';
import 'package:news_app/screens/generalpage.dart';
import 'package:news_app/screens/healthpage.dart';
import 'package:news_app/screens/sciencepage.dart';
import 'package:news_app/screens/sportspage.dart';
import 'package:news_app/screens/technologypage.dart';

class Custemcard extends StatelessWidget {
  Custemcard({super.key});
  final List<Cards> data = [
    Cards(title: 'business', image: 'assets/business.avif'),
    Cards(title: 'entertaiment', image: 'assets/entertaiment.avif'),
    Cards(title: 'general', image: 'assets/general.avif'),
    Cards(title: 'health', image: 'assets/health.avif'),
    Cards(title: 'science', image: 'assets/science.avif'),
    Cards(title: 'sports', image: 'assets/sports.avif'),
    Cards(title: 'technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: data.length,

      itemBuilder: (BuildContext context, int index) {
        final cards = data[index];
        return GestureDetector(
          onTap: () {
            if (cards.title == 'sports') {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      Sportspage(catagory: '&category=sports'),
                ),
              );
            } else if (cards.title == 'business') {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      Businesspage(catagory: '&category=business'),
                ),
              );
            } else if (cards.title == 'entertaiment') {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      Entertaimentpage(catagory: '&category=entertainment'),
                ),
              );
            } else if (cards.title == 'general') {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      Generalpage(catagory: '&category=general'),
                ),
              );
            } else if (cards.title == 'health') {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      Healthpage(catagory: '&category=health'),
                ),
              );
            } else if (cards.title == 'science') {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      Sciencepage(catagory: '&category=science'),
                ),
              );
            } else if (cards.title == 'technology') {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      Technologypage(catagory: '&category=technology'),
                ),
              );
            }
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(cards.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      cards.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
