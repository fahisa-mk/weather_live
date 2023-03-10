import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_live/homescreens/home_screen_bloc.dart';
import 'package:weather_live/screens/home_screen/home_screen.dart';
import 'package:weather_live/screens/splash_screen/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenBloc>(
      create: (context) => HomeScreenBloc()..add(const Started()),
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Whether now',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen(),
            routes: {
              '/splash_screen': (context) => const SplashScreen(),
              '/dashboard_screen': (context) => const DashboardScreen(),
            },
          );
        },
      ),
    );
  }
}
