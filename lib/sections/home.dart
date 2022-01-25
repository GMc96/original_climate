import 'package:flutter/material.dart';
import 'package:original_climate/models/user.dart';
import 'package:original_climate/sections/info.dart';
import 'package:original_climate/sections/maps.dart';

import '../theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentView = 0;
  final views = [const Info(), const UserHome(), const Maps()];

  @override
  Widget build(BuildContext context) {
    User user = const User('John', 'Doe', 1000, 'B');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primaryColor, scaffoldBackgroundColor: secondaryColor),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: deepGreen,
          title: Text(user.firstName),
        ),
        body: views[currentView],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentView,
          onTap: (int index) {
            setState(() {
              currentView = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Info',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Map',
            ),
          ],
        ),
      ),
    );
  }
}

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: const [
        Text(
          'Points: 0000',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        Text(
          'Class: D',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        Text(
          'Keep trying',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    ));
  }
}

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     User user = const User('John', 'Doe', 1000, 'B');

//     MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text(user.firstName),
//             ),
//             body: Center(
//                 child: Column(
//               children: const [
//                 Text(
//                   'Points: 0000',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(fontSize: 30, color: Colors.white),
//                 ),
//                 Text(
//                   'Class: D',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(fontSize: 30, color: Colors.white),
//                 ),
//                 Text(
//                   'Keep trying',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(fontSize: 20, color: Colors.white),
//                 ),
//               ],
//             ))));
//   }
// }
