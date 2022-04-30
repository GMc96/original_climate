import 'package:flutter/material.dart';
import 'package:original_climate/models/full_user.dart';
import 'package:original_climate/theme.dart';
import 'package:original_climate/models/meal_days.dart';

class Planner extends StatefulWidget {
  const Planner({Key? key}) : super(key: key);

  @override
  _PlannerState createState() => _PlannerState();
}

double workButton = 1.0;

class _PlannerState extends State<Planner> {
  String? mondayDropdownValue = 'Choose Meal';
  String tuesdayDropdownValue = 'Choose Meal';
  String wednesdayDropdownValue = 'Choose Meal';
  String thursdayDropdownValue = 'Choose Meal';
  String fridayDropdownValue = 'Choose Meal';
  String saturdayDropdownValue = 'Choose Meal';
  String sundayDropdownValue = 'Choose Meal';

  List<Mealday> days = [
    Mealday('Monday', 'Choose Meal'),
    Mealday('Tuesday', 'Choose Meal'),
    Mealday('wednesday', 'Choose Meal'),
    Mealday('Thursday', 'Choose Meal'),
    Mealday('Friday', 'Choose Meal'),
    Mealday('Saturday', 'Choose Meal'),
    Mealday('Sunday', 'Choose Meal'),
  ];

  @override
  Widget build(BuildContext context) {
    List<String> meals = ['Choose Meal', 'Steak', 'Fish', 'Salad'];
    List<String> tasks = [
      'Plant a tree',
      'Volunteer',
      'Give up driving for a week'
    ];

    FullUser fulluser = FullUser(
        'John',
        'Doe',
        300,
        'B',
        'Your doing good work',
        [100, 110, 150, 130, 170, 160, 250, 280],
        [true, true, false],
        []);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Choose Task"),
                content: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        fulluser.userTasks.add(tasks[0]);
                        Navigator.of(context).pop();
                      },
                      child: ListTile(
                        title: Text(
                          tasks[0],
                          style: const TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        fulluser.userTasks.add(tasks[1]);
                        Navigator.of(context).pop();
                      },
                      child: ListTile(
                        title: Text(
                          tasks[1],
                          style: const TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        fulluser.userTasks.add(tasks[2]);
                        Navigator.of(context).pop();
                      },
                      child: ListTile(
                        title: Text(
                          tasks[2],
                          style: const TextStyle(fontSize: 25),
                        ),
                      ),
                    )
                  ],
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Close"))
                ],
              );
            },
          );
        },
        backgroundColor: deepGreen,
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            child: Column(
              children: [
                Expanded(
                  child: ListWheelScrollView(
                    itemExtent: 100,
                    physics: const FixedExtentScrollPhysics(),
                    perspective: 0.005,
                    children: [
                      for (var day in days)
                        SizedBox(
                          child: Card(
                            child: Column(children: [
                              Text(
                                day.day,
                                style: const TextStyle(fontSize: 20),
                              ),
                              Text(
                                day.meal.toString(),
                                style: const TextStyle(fontSize: 20),
                              ),
                            ]),
                            color: primaryColor,
                          ),
                          width: 300,
                        ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Choose Meals"),
                          content: Column(
                            children: [
                              const Text("Monday"),
                              DropdownButton<String>(
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: tertiaryColor),
                                underline: Container(
                                  height: 2,
                                  color: tertiaryColor,
                                ),
                                onChanged: (String? newValue) => setState(
                                    () => mondayDropdownValue = newValue),
                                value: mondayDropdownValue.toString(),
                                // onChanged: (String? newValue) {
                                //   setState(() {
                                //     mondayDropdownValue = newValue!;
                                //   });
                                // },
                                items: meals.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              const Text("Tuesday"),
                              DropdownButton<String>(
                                value: tuesdayDropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: tertiaryColor),
                                underline: Container(
                                  height: 2,
                                  color: tertiaryColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    tuesdayDropdownValue = newValue!;
                                  });
                                },
                                items: meals.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              const Text("wednesday"),
                              DropdownButton<String>(
                                value: wednesdayDropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: tertiaryColor),
                                underline: Container(
                                  height: 2,
                                  color: tertiaryColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    wednesdayDropdownValue = newValue!;
                                  });
                                },
                                items: meals.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              const Text("Thursday"),
                              DropdownButton<String>(
                                value: thursdayDropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: tertiaryColor),
                                underline: Container(
                                  height: 2,
                                  color: tertiaryColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    thursdayDropdownValue = newValue!;
                                  });
                                },
                                items: meals.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              const Text("Friday"),
                              DropdownButton<String>(
                                value: fridayDropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: tertiaryColor),
                                underline: Container(
                                  height: 2,
                                  color: tertiaryColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    fridayDropdownValue = newValue!;
                                  });
                                },
                                items: meals.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              const Text("Saturday"),
                              DropdownButton<String>(
                                value: saturdayDropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: tertiaryColor),
                                underline: Container(
                                  height: 2,
                                  color: tertiaryColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    saturdayDropdownValue = newValue!;
                                  });
                                },
                                items: meals.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              const Text("Sunday"),
                              DropdownButton<String>(
                                value: sundayDropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: tertiaryColor),
                                underline: Container(
                                  height: 2,
                                  color: tertiaryColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    sundayDropdownValue = newValue!;
                                  });
                                },
                                items: meals.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    days[0].meal = mondayDropdownValue;
                                    days[1].meal = tuesdayDropdownValue;
                                    days[2].meal = wednesdayDropdownValue;
                                    days[3].meal = thursdayDropdownValue;
                                    days[4].meal = fridayDropdownValue;
                                    days[5].meal = saturdayDropdownValue;
                                    days[6].meal = sundayDropdownValue;
                                  });

                                  Navigator.of(context).pop();
                                },
                                child: const Text("Save")),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Close"))
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Choose Meals'),
                  style: ElevatedButton.styleFrom(
                    primary: deepGreen,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                  ),
                ),
              ],
            ),
            height: 200,
          ),
          SizedBox(
            child: Column(
              children: [
                AnimatedOpacity(
                    opacity: workButton,
                    duration: const Duration(milliseconds: 500),
                    child: const Text(
                      "Did you drive to work today?",
                      style: TextStyle(color: deepGreen, fontSize: 20),
                    )),
                Row(children: [
                  AnimatedOpacity(
                    opacity: workButton,
                    duration: const Duration(milliseconds: 500),
                    child: ElevatedButton(
                      onPressed: () {
                        fulluser.userWorkDays.add(true);
                        setState(() {
                          workButton = 0;
                        });
                      },
                      child: const Text("YES"),
                      style: ElevatedButton.styleFrom(
                        primary: deepGreen,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                      ),
                    ),
                  ),
                  AnimatedOpacity(
                      opacity: workButton,
                      duration: const Duration(milliseconds: 500),
                      child: ElevatedButton(
                        onPressed: () {
                          fulluser.userWorkDays.add(false);
                          setState(() {
                            workButton = 0;
                          });
                        },
                        child: const Text("NO"),
                        style: ElevatedButton.styleFrom(
                          primary: deepGreen,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                        ),
                      ))
                ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Add Trip"),
                  style: ElevatedButton.styleFrom(
                    primary: deepGreen,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                  ),
                )
              ],
            ),
            height: 150,
          ),
          Container(
            child: const Center(
              child: Text(
                "The actions you take to help the environment will show up here",
                style: TextStyle(color: deepGreen, fontSize: 20),
              ),
            ),
            color: primaryColor,
            height: 300,
          )
        ],
      )),
    );
  }
}
