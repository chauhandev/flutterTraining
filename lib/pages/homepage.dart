import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 50;
    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
      ),
      body: Center(
          child: Container(
        child: Text("Welcome to $days days flutter"),
      )),
      drawer: Drawer(),
    );
  }
}
