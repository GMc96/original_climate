import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:original_climate/models/full_user.dart';
import 'package:original_climate/sections/info.dart';
import 'package:original_climate/sections/planner.dart';
import 'package:original_climate/auth/sign_in.dart';
import 'package:original_climate/services/calc_points.dart';

import 'package:fl_chart/fl_chart.dart';
import '../theme.dart';

class Home extends StatefulWidget {
  //When i implemented firebase auth i used this user credential variable
  final User? userCredentials;
  //for the presentation i can use this user
  const Home(this.userCredentials, {Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

FullUser fulluser = FullUser('John', 'Doe', 300, 'B', 'Your doing good work',
    [100, 110, 150, 130, 170, 160, 250, 280], [true, true, false], []);

int kwhConverted = 0;

List<FullUser> fullusers = sortusers();

class _HomeState extends State<Home> {
  int currentView = 1;
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
          title: Text(
            //"Welcome " + widget.userCredentials.email.toString(),
            "Welcom " + fulluser.firstName,
            style: const TextStyle(fontSize: 18, color: deepGreen),
          ),
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
                                      fulluser.points = calculatePoints(
                                          int.parse(electricityController.text),
                                          int.parse(recyclingController.text),
                                          int.parse(wasteController.text),
                                          int.parse(compostController.text));
                                      List<String> userInfo =
                                          getUserClass(fulluser.points);

                                      fulluser.userClass = userInfo.first;
                                      fulluser.userMessage = userInfo.last;
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

//---------------------------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------------------------------

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        children: [
          Text(
            fulluser.points.toString(),
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontSize: 30, color: deepGreen, fontWeight: FontWeight.bold),
          ),
          Text(
            fulluser.userClass,
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontSize: 30, color: deepGreen, fontWeight: FontWeight.bold),
          ),
          Text(
            fulluser.userMessage,
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontSize: 20, color: deepGreen, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: LineChart(LineChartData(
                borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.white, width: 2)),
                gridData: FlGridData(
                  show: true,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(color: Colors.white, strokeWidth: 1);
                  },
                  drawVerticalLine: true,
                  getDrawingVerticalLine: (value) {
                    return FlLine(color: Colors.white, strokeWidth: 1);
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 35,
                      getTextStyles: (context, value) {
                        return const TextStyle(
                            color: Color(0xff68737d),
                            fontSize: 16,
                            fontWeight: FontWeight.bold);
                      },
                      getTitles: (value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'Jan';
                          case 2:
                            return 'Feb';
                          case 4:
                            return 'Mar';
                          case 6:
                            return 'Apr';
                          case 8:
                            return 'May';
                        }
                        return '';
                      },
                      margin: 8),
                  rightTitles: SideTitles(),
                  topTitles: SideTitles(),
                  leftTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 35,
                    getTextStyles: (context, value) {
                      return const TextStyle(
                          color: Color(0xff68737d),
                          fontSize: 16,
                          fontWeight: FontWeight.bold);
                    },
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 0:
                          return '0';
                        case 1:
                          return '50';
                        case 2:
                          return '100';
                        case 3:
                          return '150';
                        case 4:
                          return '200';
                        case 5:
                          return '250';
                        case 6:
                          return '300';
                        case 7:
                          return '350';
                        case 8:
                          return '400';
                      }
                      return '';
                    },
                    margin: 12,
                  ),
                ),
                maxX: 9,
                maxY: 9,
                minY: 0,
                minX: 0,
                lineBarsData: [
                  LineChartBarData(
                      spots: [
                        const FlSpot(0, 0),
                        const FlSpot(2, 2),
                        const FlSpot(4, 5),
                        const FlSpot(7.5, 4),
                      ],
                      isCurved: true,
                      colors: [Colors.black12, Colors.white70, Colors.white],
                      barWidth: 5,
                      belowBarData: BarAreaData(
                          show: true,
                          colors: gradientColors
                              .map((e) => e.withOpacity(0.3))
                              .toList()))
                ])),
          ),
          SizedBox(
              height: 410,
              child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            child: Text(users[index].firstName[0] +
                                users[index].lastName[0]),
                          ),
                          Column(
                            children: [
                              Text(
                                users[index].firstName +
                                    ' ' +
                                    users[index].lastName,
                                style: const TextStyle(fontSize: 20),
                              ),
                              Text(users[index].points.toString())
                            ],
                          ),
                          if (index == 0)
                            const Text("🥇", style: TextStyle(fontSize: 30))
                          else if (index == 1)
                            const Text("🥈", style: TextStyle(fontSize: 30))
                          else if (index == 2)
                            const Text("🥉", style: TextStyle(fontSize: 30))
                          else if (index >= 3)
                            const Text(""),
                          Text(
                            users[index].userClass + ' ',
                            style: const TextStyle(
                              fontSize: 25,
                            ),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    ));
  }
}
