import 'package:flutter/material.dart';
import 'Info.dart';
import 'maps.dart';
import 'placeholder_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  int _currentIndex = 0;
  final List _children = [Info(), Home(), Maps()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter App'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: ('Info'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: ('Map'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
