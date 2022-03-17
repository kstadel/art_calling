import 'package:art_calling/screens/contact_screen.dart';
import 'package:art_calling/screens/gallery_screen.dart';
import 'package:art_calling/screens/home_screen.dart';
import 'package:flutter/material.dart';

// TODO: https://stackoverflow.com/questions/59822279/difference-between-ongenerateroute-and-routes-in-flutter
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
      case '/gallery':
        return MaterialPageRoute(
          builder: (_) => const GalleryScreen(
            title: 'gallery',
          ),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => const GalleryScreen(title: 'gallery'));
    }
  }
}
