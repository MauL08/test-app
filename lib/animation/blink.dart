import 'package:flutter/material.dart';

class AnimationTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'start',
              child: Image.asset(
                'images/bosscha.jpg',
                width: 150,
                height: 150,
              ),
            ),
            Text(
              "Hello There",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              child: Text("Go Back"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
