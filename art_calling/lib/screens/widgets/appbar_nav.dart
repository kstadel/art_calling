import 'package:flutter/material.dart';

class AppbarNav extends StatelessWidget implements PreferredSizeWidget {
  const AppbarNav({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/contact');
          },
          child: const Text("contact"),
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/gallery');
          },
          child: const Text("gallery"),
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),
        ),
      ],
    );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
