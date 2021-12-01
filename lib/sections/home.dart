import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Align(
          alignment: Alignment.topCenter,
        ),
        Text(
          'Points: 0000',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 30),
        ),
        Text(
          'Class: D',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 30),
        ),
        Text(
          'Keep trying',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
