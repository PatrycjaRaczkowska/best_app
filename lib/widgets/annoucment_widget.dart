import 'package:flutter/material.dart';

class AnnouncementTile extends StatelessWidget {
  final String title;
  final String authorName;
  final DateTime date; // Zmiana na DateTime
  final String imageUrl;
  final String description;

  AnnouncementTile({
    required this.title,
    required this.authorName,
    required this.date, // Użyj DateTime
    this.imageUrl = 'assets/images/user_image.jpg',
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double cardHeight = screenHeight / 7;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth = screenWidth;

    // Formatowanie daty na przyjazny tekst
    String formattedDate = "${date.day}/${date.month}/${date.year}";

    return Container(
      margin: const EdgeInsets.only(top: 4.0),
      height: cardHeight,
      width: cardWidth,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage(imageUrl),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              title: Text(title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(authorName),
                  Text(formattedDate, style: const TextStyle(fontSize: 12)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(description),
            ),
          ],
        ),
      ),
    );
  }
}
