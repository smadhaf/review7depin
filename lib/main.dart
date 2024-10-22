import 'package:flutter/material.dart';
import 'package:modul_8/controller/main_controller.dart';
import 'package:modul_8/controller/theme_controller.dart';
import 'package:modul_8/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      ),
      ChangeNotifierProvider(
      create: (BuildContext context) => ThemeModeData(),
      )],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: Provider.of<ThemeModeData>(context,listen: false).themeMode,
        home: TasksScreen(),
      ),
    );
  }
}