import 'package:flutter/material.dart';
import 'package:obviedo/routes/route_path.dart';
import 'package:obviedo/routes/routes.dart';
// import 'package:obviedo/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Obviedo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'PTSans',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const SplashScreen(),
      initialRoute: RoutePath.splash,
      routes: myRoutes(context),
    );
  }
}
