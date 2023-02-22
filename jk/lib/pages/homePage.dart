import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("homepage"),
      ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/article',
                arguments: {'title': '1234567890'});
          },
          child: Text("命名路由"))
    ]);
  }
}
