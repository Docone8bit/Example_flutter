import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  CustomScaffold({required this.title, required this.body, required AppBar appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),backgroundColor: Colors.blue,centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'เมนู',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('หน้าหลัก'),
              onTap: () {
                Navigator.pop(context);
                context.go('/'); // นำทางไปที่หน้าหลัก
              },
            ),
            ListTile(
              leading: Icon(Icons.details),
              title: Text('รายละเอียด'),
              onTap: () {
                Navigator.pop(context);
                context.go('/details'); // นำทางไปที่หน้ารายละเอียด
              },
            ),
            // สามารถเพิ่มรายการอื่น ๆ ได้ตามต้องการ
          ],
        ),
      ),
      body: body,
    );
  }
}
