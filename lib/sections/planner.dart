import 'package:flutter/material.dart';
import 'package:original_climate/models/meal_days.dart';

import 'package:original_climate/theme.dart';

class Planner extends StatefulWidget {
  const Planner({Key? key}) : super(key: key);

  @override
  State<Planner> createState() => _PlannerState();
}

class _PlannerState extends State<Planner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Expanded(
              child: ListWheelScrollView(
                itemExtent: 200,
                physics: const FixedExtentScrollPhysics(),
                perspective: 0.005,
                children: [
                  for (var day in days)
                    Card(
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
                ],
              ),
            ),
            height: 250,
          ),
          Container(
            child: Text("Transport"),
          ),
          Container(
            child: Text("Good Deeds"),
          )
        ],
      ),
    );
  }
}
// Column(
//       children: [
//         Container(
//             child: ListWheelScrollView(itemExtent: 42, children: [
//           Card(child: Text("Card 1")),
//           Card(child: Text("Card 2")),
//           Card(child: Text("Card 3"))
//         ])),
//         Container(
//             child: Column(children: [
//           Text("Did you drive to work today?"),
//           ElevatedButton(
//               onPressed: () => {
//                     //Do something here
//                   },
//               child: const Text("Yes")),
//           ElevatedButton(
//               onPressed: () => {
//                     //Do something here
//                   },
//               child: const Text("No"))
//         ])),
//         Container(child: Text("Good Deeds"))
//       ],
//     );
