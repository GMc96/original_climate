import 'package:flutter/material.dart';
import 'package:original_climate/theme.dart';
import 'package:original_climate/models/meal_days.dart';

class Planner extends StatefulWidget {
  const Planner({Key? key}) : super(key: key);

  @override
  _PlannerState createState() => _PlannerState();
}

class _PlannerState extends State<Planner> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                        child: InkWell(
                          onTap: () {
                            debugPrint("Working");
                          },
                          child: Card(
                            child: Column(children: [
                              Text(
                                day.day,
                                style: const TextStyle(fontSize: 20),
                              ),
                              Text(
                                day.meal,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ]),
                            color: primaryColor,
                          ),
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
                            Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'Enter your email',
                                    ),
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Validate will return true if the form is valid, or false if
                                        // the form is invalid.
                                        if (_formKey.currentState!.validate()) {
                                          // Process data.
                                        }
                                      },
                                      child: const Text('Submit'),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                ),
              ),
            ],
          ),
          height: 200,
        ),
        SizedBox(
          child: Column(
            children: [
              const Text(
                "Did you drive to work today?",
                style: TextStyle(color: deepGreen, fontSize: 20),
              ),
              Row(children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("YES"),
                  style: ElevatedButton.styleFrom(
                    primary: deepGreen,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("NO"),
                  style: ElevatedButton.styleFrom(
                    primary: deepGreen,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                  ),
                )
              ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Add Trip"),
                style: ElevatedButton.styleFrom(
                  primary: deepGreen,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
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
          height: 200,
        )
      ],
    ));
  }
}
