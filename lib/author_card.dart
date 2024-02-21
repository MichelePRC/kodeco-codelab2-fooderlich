import 'package:flutter/material.dart';
import 'circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(authorName,
                      style: FooderlichTheme.lightTextTheme.displayMedium),
                  Text(title,
                      style: FooderlichTheme.lightTextTheme.displaySmall),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              const snackbar = SnackBar(content: Text('Favorite added'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            icon: Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
          )
        ],
      ),
    );
  }
}
