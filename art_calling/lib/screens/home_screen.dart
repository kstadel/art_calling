import 'package:flutter/material.dart';

import '../router/router_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/contact');
            },
            child: const Text("contact"),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/gallery');
            },
            child: const Text("gallery"),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
