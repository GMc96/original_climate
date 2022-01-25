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
          backgroundColor: deepGreen,
          currentIndex: currentView,
          onTap: (int index) {
            setState(() {
              currentView = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.info,
                  color: primaryColor,
                ),
                label: 'Info',
                backgroundColor: secondaryColor),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: primaryColor,
                ),
                label: 'Home',
                backgroundColor: secondaryColor),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.map,
                  color: primaryColor,
                ),
                label: 'Map',
                backgroundColor: secondaryColor),
          ],
          selectedItemColor: secondaryColor,
        ),
      ),
    );
  }
}

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Center(
        child: Column(
      children: [
        const Text(
          'Points: 0000',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 30, color: primaryColor, fontWeight: FontWeight.bold),
        ),
        const Text(
          'Class: D',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 30, color: primaryColor, fontWeight: FontWeight.bold),
        ),
        const Text(
          'Keep trying',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 20, color: primaryColor, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Calculate Points'),
                    content: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          const Text(
                            'Electricity',
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'kg of CO2 emissions'),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 30),
                          const Text(
                            'Garbage',
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Electricity bill usage'),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, or false otherwise.
                              if (_formKey.currentState!.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                );
                              }
                            },
                            child: const Text('Submit'),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: const Text("Calculate Points"),
          style: TextButton.styleFrom(
            primary: primaryColor,
          ),
        ),
      ],
    ));
  }
}
