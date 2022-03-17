import 'package:art_calling/screens/contact_screen.dart';
import 'package:art_calling/screens/gallery_screen.dart';
import 'package:flutter/material.dart';

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
      routes: {
        '/': (context) => const HomeScreen(
              title: 'home sweet home!',
            ),
        '/contact': (context) => const ContactScreen(
              title: 'contact sweet contact!',
            ),
        '/gallery': (context) => const GalleryScreen(title: 'galllerrryyyyy!')
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
