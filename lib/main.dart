import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INNOVISION'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Centered photo
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/your_photo.png'),
            ),
            SizedBox(height: 20.0),
            // Four blocks below
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlockWidget(),
                BlockWidget(),
                BlockWidget(),
                BlockWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BlockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 80.0,
      margin: EdgeInsets.all(10.0),
      color: Colors.blue, // Change this color as per your requirement
    );
  }
}
