import 'package:flutter/material.dart';
import 'package:original_climate/models/user.dart';
import 'package:original_climate/sections/info.dart';
import 'package:original_climate/sections/planner.dart';
import 'package:original_climate/services/calc_points.dart';

import '../theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

User user = User('John', 'Doe', 300, 'B', 'Your doing good work');
int kwhConverted = 0;

class _HomeState extends State<Home> {
  int currentView = 0;
  final views = [const Info(), const UserHome(), const Planner()];
  final _formKey = GlobalKey<FormState>();
  final electricityController = TextEditingController();
  final recyclingController = TextEditingController();
  final wasteController = TextEditingController();
  final compostController = TextEditingController();
  final kwhController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primaryColor, scaffoldBackgroundColor: secondaryColor),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          //title: Text(),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SingleChildScrollView(
                            child: AlertDialog(
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
                                  controller: electricityController,
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
                                  controller: recyclingController,
                                  decoration: const InputDecoration(
                                      hintText: 'Recycling bin weight'),
                                  // The validator receives the text that the user has entered.
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  controller: wasteController,
                                  decoration: const InputDecoration(
                                      hintText: 'Waste bin weight'),
                                  // The validator receives the text that the user has entered.
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  controller: compostController,
                                  decoration: const InputDecoration(
                                      hintText: 'Compost bin weight'),
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
                                      user.points = calculatePoints(
                                          int.parse(electricityController.text),
                                          int.parse(recyclingController.text),
                                          int.parse(wasteController.text),
                                          int.parse(compostController.text));
                                      List<String> userInfo =
                                          getUserClass(user.points);

                                      user.userClass = userInfo.first;
                                      user.userMessage = userInfo.last;
                                    }
                                  },
                                  child: const Text('Submit'),
                                ),
                                const SizedBox(height: 30),
                                const Text(
                                  'Convert kWh to kg of CO2',
                                  style: TextStyle(fontSize: 20),
                                ),
                                TextFormField(
                                  controller: kwhController,
                                  decoration:
                                      const InputDecoration(hintText: 'kWh'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    kwhConverted = calculateKWHtoKG(
                                        int.parse(kwhController.text));
                                  },
                                  child: const Text('Calculate'),
                                ),
                                Text(kwhConverted.toString()),
                              ],
                            ),
                          ),
                        ));
                      });
                },
                icon: const Icon(
                  Icons.calculate,
                  color: deepGreen,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle,
                  color: deepGreen,
                ))
          ],
        ),
        body: views[currentView],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: primaryColor,
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
                  color: deepGreen,
                ),
                label: 'Info',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: deepGreen,
                ),
                label: 'Home',
                backgroundColor: secondaryColor),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.task,
                  color: deepGreen,
                ),
                label: 'Planner',
                backgroundColor: secondaryColor),
          ],
          selectedItemColor: deepGreen,
        ),
      ),
    );
  }
}

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        children: [
          Text(
            user.points.toString(),
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontSize: 30, color: primaryColor, fontWeight: FontWeight.bold),
          ),
          Text(
            user.userClass,
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontSize: 30, color: primaryColor, fontWeight: FontWeight.bold),
          ),
          Text(
            user.userMessage,
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontSize: 20, color: primaryColor, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 300,
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' ' +
                              users[index].firstName +
                              ' ' +
                              users[index].lastName +
                              ': ' +
                              users[index].points.toString(),
                          style: const TextStyle(fontSize: 25),
                        ),
                        Text(
                          users[index].userClass + ' ',
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    ));
  }
}

//User GetUserPoints() {}
