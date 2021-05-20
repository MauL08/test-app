import 'package:flutter/material.dart';
import 'package:project_one/animation/animation.dart';
import 'package:project_one/menu/screen2.dart';
import 'package:project_one/menu/test.dart';
import 'menu/render_picture.dart';

class Home extends StatelessWidget {
  final List<int> num = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text("Travel Information"),
        actions: [Icon(Icons.search)],
      ),
      body: Card(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Wisata Indonesia",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('images/farm-house.jpg'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('images/farm-house.jpg'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('images/farm-house.jpg'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('images/farm-house.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text("Open Everyday"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.timer_sharp),
                        SizedBox(height: 8.0),
                        Text("10.00 - 20.00"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.price_change_sharp),
                        SizedBox(height: 8.0),
                        Text("Rp25.000"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('images/farm-house.jpg'),
                    Image.asset('images/bosscha.jpg'),
                    Image.asset('images/kawah-putih.jpg'),
                    Image.asset('images/taman-film.jpg'),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.greenAccent,
                    child: Text("First Screen (Show All Picture)"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AllPicture();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: RaisedButton(
                    color: Colors.greenAccent,
                    child: Text("Second Screen"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SecondScreen();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: RaisedButton(
                    color: Colors.greenAccent,
                    child: Text("Test Screen"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return TestScreen();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: RaisedButton(
                    color: Colors.greenAccent,
                    child: Text("Animation Test"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AnimationPage();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
