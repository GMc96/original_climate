import 'package:flutter/material.dart';
import 'sections/home.dart';
import 'sections/info.dart';
import 'sections/maps.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int currentView = 0;
  final views = [const Home(), const Info(), const Map()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Original Climate'),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.account_circle),
            ),
          ],
        ),
        body: views[currentView],
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
