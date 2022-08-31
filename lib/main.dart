import 'dart:io';

// import 'package:bitsdojo_window/bitsdojo_window.dart';
// import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Window.initialize();
  await Window.setEffect(
    effect: WindowEffect.aero,
    color: const Color.fromARGB(50, 0, 0, 0),
  );

  runApp(const MyApp());
  // Size size = await DesktopWindow.getWindowSize();

  // const initialSize = Size(800, 650);
  // const minSize = Size(600, 450);
  // final maxSize = Size(size.width, size.height);
  // appWindow.maxSize = maxSize;
  // appWindow.minSize = minSize;
  // appWindow.size = initialSize; //default size
  // appWindow.show();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desktop App Template',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const LoginScreen(),
    );
  }
}
