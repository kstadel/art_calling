import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:art_calling/router/router_widget.dart';
import 'package:art_calling/screens/home_screen.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomeScreen(
        title: 'Home!',
      ),
    );
  }
}
