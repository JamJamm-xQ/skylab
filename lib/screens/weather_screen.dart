import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:skylab/utilities/constants.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  late String weatherCondition = "San Fransico";
  late String tip = "San Fransico";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
            elevation: 0.0,
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),*/
      /*drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    child: TextButton(
                  onPressed: () {},
                  child: Text('skylab.'),
                )),
                Row(
                  children: [
                    Icon(Icons.settings),
                    Text('Settings'),
                    //ToggleButtons(children: children, isSelected: isSelected)
                  ],
                )
              ],
            ),
          ),*/
      //backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Icon(
                  Icons.location_pin,
                  size: 25,
                ),
                const SizedBox(height: 7.0),
                TextButton(
                  onPressed: () {
                    // Navigate to search city page
                  },
                  child: Text(
                    weatherCondition.toUpperCase(),
                    style: kCityName,
                  ),
                ),
              ],
            ),
            LottieBuilder.asset(
              'assets/partly_cloudy.json',
              height: 300.0,
              width: 300.0,
            ),
            /*SizedBox(
                  child: Center(child: Text('Lottie Animation')),
                  height: 300.0,
                  width: 300.0,
                ),*/
            const Text(
              "30°C",
              style: kTempText,
            ),
            const Text(
              'Tip: You might want to grab an umbrella.',
              style: kTipText,
            )
            /*TextButton(
                  onPressed: () {},
                  child: Icon(Icons.search_outlined),
                )*/
          ],
        ),
      ),
    );
  }
}
