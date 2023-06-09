import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsivedashboardui/dashboard.dart';
import 'package:responsivedashboardui/pages/desktop.dart';
import 'package:responsivedashboardui/pages/mobile.dart';
import 'package:responsivedashboardui/pages/tablet.dart';
import 'package:responsivedashboardui/screens/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: bgColor,
            // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            //     .apply(bodyColor: Colors.white),
            canvasColor: secondaryColor),
        home: const DesktopPage());
  }
}
