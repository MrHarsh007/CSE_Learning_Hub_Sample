import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:gtu_material/pages/catelogDetails/homesemNummbers.dart';

import 'package:gtu_material/pages/help_page.dart';
import 'package:gtu_material/pages/home_page.dart';
import 'package:gtu_material/pages/sem_pages/sem1.dart';
import 'package:gtu_material/pages/sem_pages/sem3.dart';
import 'package:gtu_material/pages/sem_pages/sem4.dart';
import 'package:gtu_material/pages/sem_pages/sem5.dart';
import 'package:gtu_material/pages/sem_pages/sem6.dart';
import 'package:gtu_material/pages/sem_pages/sem7.dart';
import 'package:gtu_material/routes/routes.dart';

void main() {
  runApp(const MyApp());
  disableCapture();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        MyRoutes.sem1route: (context) => const sem1Page(),
        MyRoutes.sem3route: (context) => const sem3Page(),
        MyRoutes.sem4route: (context) => const sem4Page(),
        MyRoutes.sem5route: (context) => const sem5Page(),
        MyRoutes.sem6route: (context) => const sem6Page(),
        MyRoutes.sem7route: (context) => const sem7Page(),
        MyRoutes.helpRoute: (context) => HelpPage(),
        MyRoutes.homeNumber: (context) => const HomeNumberDetails(),
      },
    );
  }
}

disableCapture() async {
  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
}
