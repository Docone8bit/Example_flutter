import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture and Button Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // InkWell Example
            InkWell(
              onTap: () => print("InkWell Tapped"),
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    'InkWell Button',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // GestureDetector Example
            GestureDetector(
              onTap: () => print("GestureDetector Tapped"),
              onDoubleTap: () => print("GestureDetector Double Tapped"),
              onLongPress: () => print("GestureDetector Long Pressed"),
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    'GestureDetector Button',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // InkResponse Example
            InkResponse(
              onTap: () => print("InkResponse Tapped"),
              highlightShape: BoxShape.circle,
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.favorite, color: Colors.white, size: 32),
              ),
            ),
            SizedBox(height: 16),

            // ElevatedButton Example
            ElevatedButton(
              onPressed: () => print("ElevatedButton Pressed"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 16),

            // RawMaterialButton Example
            RawMaterialButton(
              onPressed: () => print("RawMaterialButton Pressed"),
              fillColor: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(20.0),
              child: Icon(Icons.thumb_up, color: Colors.white, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}
