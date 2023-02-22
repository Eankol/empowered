import 'package:flutter/material.dart';

class alert extends Dialog {
  const alert({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          width: 200,
          height: 150,
          child: Text("123"),
        ),
      ),
    );
  }
}
