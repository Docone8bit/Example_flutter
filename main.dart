import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rehab2024/AlignWidgetExample.dart';
import 'package:rehab2024/AllWidget.dart';
import 'package:rehab2024/Button.dart';
import 'package:rehab2024/FullwidthButton.dart';
import 'package:rehab2024/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // สร้าง GoRouter
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),

      GoRoute(
       path: '/details', 
       builder: (context, state)=> DetailsScreen()      

      ),
      
      GoRoute(
       path: '/fullbutton',
       builder: (context, state)=> FullWidthButton()      

      ),

      GoRoute(
       path: '/button', 
       builder: (context, state)=> Button()     

      ),
      GoRoute(
       path: '/alignwidget', 
       builder: (context, state)=> AllWidgetsExample()  

      ),
      GoRoute(
       path: '/allwidget', 
       builder: (context, state)=> AllWidgetsDemo()  

      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      
      title: 'GoRouter Example',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      
    );
  
  }
}
