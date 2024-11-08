// import 'package:flutter/material.dart';
// import 'package:rehab2024/CustomScaffold.dart';

// class FullWidthButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // กำหนดความกว้างให้เท่ากับหน้าจอ
//     final screenWidth = MediaQuery.of(context).size.width;

//     return CustomScaffold(
//       appBar: AppBar(
//         title: Text('หน้าปุ่ม'),
//       ),
      
//       title: 'หน้าปุ่ม',
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             // กำหนดการทำงานเมื่อกดปุ่ม
//             print("Container Button Clicked!");
//           },
//           child: Container(
//             height: 12,
//             width: screenWidth, // กำหนดความกว้างให้เต็มหน้าจอ
//             margin: EdgeInsets.symmetric(horizontal: 16.0), // ระยะขอบซ้ายขวา
//             padding: EdgeInsets.symmetric(vertical: 16.0), // ความสูงของปุ่ม
//             decoration: BoxDecoration(
//               color: Colors.blue, // สีพื้นหลังของปุ่ม
//               borderRadius: BorderRadius.circular(8.0), // มุมโค้งของปุ่ม
//             ),
//             child: Center(
//               child: Text(
//                 'ปุ่ม Container เต็มหน้าจอ',
//                 style: TextStyle(
//                   color: Colors.white, // สีข้อความ
//                   fontSize: 16.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rehab2024/CustomScaffold.dart';

class FullWidthButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // กำหนดความกว้างให้เท่ากับหน้าจอ
    final screenWidth = MediaQuery.of(context).size.width;

    return CustomScaffold(
       appBar: AppBar(
        title: Text('หน้าปุ่ม'),
      ),
      title: 'หน้าปุ่ม',
      body: Center(
        child: InkWell(
          onTap: () {
           context.go('/');
          },
          
          child: Container(
            child: Text('ปุ่ม'),
            height: 80,
            width: screenWidth, // กำหนดความกว้างให้เต็มหน้าจอ
             margin: EdgeInsets.symmetric(horizontal: 16.0), // ระยะขอบซ้ายขวา
             padding: EdgeInsets.symmetric(vertical: 16.0), // ความสูงของปุ่ม
            decoration: BoxDecoration(
              color: Colors.blue, // สีพื้นหลังของปุ่ม
              borderRadius: BorderRadius.circular(8.0), // มุมโค้งของปุ่ม
              boxShadow: [
                BoxShadow(
                  color: Colors.black26, // สีของเงา
                  blurRadius: 10.0, // ขนาดของเงา
                  offset: Offset(0, 5), // ตำแหน่งของเงา
                ),
              ],
            ),
           
          ),
        ),
      ),
    );
  }
}
