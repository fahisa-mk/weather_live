import 'package:flutter/material.dart';
import 'package:weather_live/screens/search_screen/search_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'WeatherLive',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 32,
              )),
        ],
      ),
    );
  }
}
