// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../colorSelecter/colorSelecter.dart';

class article extends StatefulWidget {
  final Map arguments;
  const article({super.key, required this.arguments});

  @override
  State<article> createState() => _articleState();
}

class _articleState extends State<article> {
  late String articleTitle;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    articleTitle =
        widget.arguments['title'].isEmpty ? '文章' : widget.arguments['title'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.articleTitle, style: TextStyle(color: Colors.white)),
        titleSpacing: 12,
        backgroundColor: HexColor("00966b"),
      ),
      body: Container(
        child: Text("文章"),
      ),
    );
  }
}
