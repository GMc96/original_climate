import 'package:flutter/material.dart';

class User {
  final String firstName;
  final String lastName;
  final int points;
  final String userClass;
  final String userMessage;

  const User(this.firstName, this.lastName, this.points, this.userClass,
      this.userMessage);
}

List<User> users = [
  const User('user', '1', 200, 'D', 'keep trying'),
  const User('user', '2', 100, 'C', 'VG'),
  const User('user', '3', 250, 'C', 'Great'),
  const User('user', '4', 150, 'B', 'Good'),
  const User('user', '5', 300, 'A', 'Great work'),
  const User('user', '6', 200, 'D', 'keep trying'),
  const User('user', '7', 100, 'C', 'VG'),
  const User('user', '8', 250, 'C', 'Great'),
  const User('user', '9', 150, 'B', 'Good'),
  const User('user', '10', 300, 'A', 'Great work')
];
