import 'package:art_calling/screens/contact_screen.dart';
import 'package:art_calling/screens/gallery_screen.dart';
import 'package:art_calling/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(title: 'home'));
      case '/contact':
        return MaterialPageRoute(
          builder: (_) => const ContactScreen(
            title: 'contact',
          ),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => const GalleryScreen(title: 'gallery'));
    }
  }
}
