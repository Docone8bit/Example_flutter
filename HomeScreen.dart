import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rehab2024/CustomScaffold.dart';


class HomeScreen extends StatelessWidget {
  
  @override
  
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text('หน้าหลัก'),
      ),
     
      title: 'หน้าหลัก',
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/details'); // นำทางไปที่หน้ารายละเอียด
              },
              child: Text('ไปที่หน้ารายละเอียด'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/'); // นำทางไปที่หน้ารายละเอียด
              },
              child: Text('ไปที่หน้าหลัก'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/button'); // นำทางไปที่หน้ารายละเอียด
              },
              child: Text('ไปที่หน้าหลายปุ่ม'),
            ),
              ElevatedButton(
              onPressed: () {
                context.go('/alignwidget'); // นำทางไปที่หน้ารายละเอียด
              },
              child: Text('ไปที่หน้าตัวอย่างwidget'),
            ),
             ElevatedButton(
              onPressed: () {
                context.go('/allwidget'); // นำทางไปที่หน้ารายละเอียด
              },
              child: Text('ไปที่หน้าตัวอย่างALLwidget'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text('หน้ารายละเอียด'),
      ),
      title: 'หน้ารายละเอียด',
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/details'); // นำทางไปที่หน้ารายละเอียด
              },
              child: Text('ไปที่หน้ารายละเอียด'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/'); // นำทางไปที่หน้ารายละเอียด
              },
              child: Text('ไปที่หน้าหลัก'),
            ),
             ElevatedButton(
              onPressed: () {
                context.go('/fullbutton'); // นำทางไปที่หน้ารายละเอียด
              },
              child: Text('ไปต่อไป'),
            ),
          ],
        ),
      ),
    );
  }
}
