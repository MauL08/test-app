import 'package:flutter/material.dart';
import 'package:project_one/animation/blink.dart';

class AnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'start',
              child: Image.asset(
                'images/bosscha.jpg',
                width: 300,
                height: 300,
              ),
            ),
            Text(
              "Hello There",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              child: Text("Go Test"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AnimationTest();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
