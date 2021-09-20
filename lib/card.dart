import 'package:flutter/material.dart';
import 'post.dart';

class PostCard extends StatelessWidget {

  late Post post;
  PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.lowcostliving.co.uk%2Fwp-content%2Fuploads%2F2015%2F12%2FCall-Ducks.jpg&f=1&nofb=1g"),
            Text(
              '${post.name}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 2,
              ),
            )
          ],
        ),
      )
    );
  }
}