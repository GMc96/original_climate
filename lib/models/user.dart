class User {
  String firstName;
  String lastName;
  int points;
  String userClass;
  String userMessage;
  List<int> userScores;

  User(this.firstName, this.lastName, this.points, this.userClass,
      this.userMessage, this.userScores);
}

List<User> users = [
  User('user', '1', 200, 'D', 'keep trying', []),
  User('user', '2', 100, 'C', 'VG', []),
  User('user', '3', 250, 'C', 'Great', []),
  User('user', '4', 150, 'B', 'Good', []),
  User('user', '5', 300, 'A', 'Great work', []),
  User('user', '6', 200, 'D', 'keep trying', []),
  User('user', '7', 100, 'C', 'VG', []),
  User('user', '8', 250, 'C', 'Great', []),
  User('user', '9', 150, 'B', 'Good', []),
  User('user', '10', 300, 'A', 'Great work', [])
];

List<User> sortusers() {
  users.sort((b, a) => a.points.compareTo(b.points));

  return users;
}
