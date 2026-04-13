import 'package:flutter/material.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/utils/app_routes.dart';
import 'package:news/utils/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      initialRoute:AppRoutes.home_route ,
      routes:{
        AppRoutes.home_route: (context)=> const HomeScreen()
      } ,
      themeMode:AppTheme.themeMode ,
      darkTheme:AppTheme.darkTheme ,
      theme:AppTheme.lightTheme ,
    );
  }
}

