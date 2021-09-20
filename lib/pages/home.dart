import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, '/gallery');
                });
              },
              child: Text('Gallery'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green[600],
                padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.amp_stories_rounded),
        backgroundColor: Colors.green[400],
      ),
    );
  }
}