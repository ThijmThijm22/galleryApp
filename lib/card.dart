import 'package:flutter/material.dart';
import 'post.dart';

class PostCard extends StatelessWidget {

  late Post post;
  PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Card(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(post.src),
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
      ),
    );
  }
}
