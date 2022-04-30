class FullUser {
  String firstName;
  String lastName;

  int points;
  String userClass;
  String userMessage;
  List<int> userScores;
  List<bool> userWorkDays;
  List<String> userTasks;

  FullUser(this.firstName, this.lastName, this.points, this.userClass,
      this.userMessage, this.userScores, this.userWorkDays, this.userTasks);
}

List<FullUser> users = [
  FullUser('user', '1', 200, 'D', 'keep trying', [], [], []),
  FullUser('user', '2', 100, 'C', 'VG', [], [], []),
  FullUser('user', '3', 250, 'C', 'Great', [], [], []),
  FullUser('user', '4', 150, 'B', 'Good', [], [], []),
  FullUser('user', '5', 300, 'A', 'Great work', [], [], []),
  FullUser('user', '6', 200, 'D', 'keep trying', [], [], []),
  FullUser('user', '7', 100, 'C', 'VG', [], [], []),
  FullUser('user', '8', 250, 'C', 'Great', [], [], []),
  FullUser('user', '9', 150, 'B', 'Good', [], [], []),
  FullUser('user', '10', 300, 'A', 'Great work', [], [], [])
];

List<FullUser> sortusers() {
  users.sort((b, a) => a.points.compareTo(b.points));

  return users;
}
