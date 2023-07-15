import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ui_projects/views/chat_screen.dart';
import 'package:ui_projects/views/iot_applications.dart';
import 'package:ui_projects/views/modern_light_switch.dart';
import 'package:ui_projects/views/rider_profile.dart';
import 'package:ui_projects/views/stacked_carousel_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 190, 190, 190),
        ),
      ),
      home: RiderProfile(),
    );
  }
}
