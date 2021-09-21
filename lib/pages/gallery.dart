import 'package:flutter/material.dart';
import '../post.dart';
import '../card.dart';

class Gallery extends StatelessWidget {


    List<Post> posts = [
    Post(name: "eend", src: "https://images.freeimages.com/images/large-previews/200/little-white-duck-1400903.jpg"),
    Post(name: "beer", src: "https://www.counterassault.com/wp-content/uploads/2016/09/bear-spray-counter-assault-grizzly-200x200.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        centerTitle: true,
        backgroundColor: Colors.orange[400],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: posts.map((post) => PostCard(post: post)).toList(),
        ),
      ),
    );
  }
}