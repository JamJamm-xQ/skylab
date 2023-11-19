import 'package:flutter/material.dart';
import 'package:skylab/screens/weather_screen.dart';

void main() => runApp(const SkyLab());

class SkyLab extends StatelessWidget {
  const SkyLab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          "/": (context) => const Weather(),
        });
  }
}
