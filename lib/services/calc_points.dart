int calculatePoints(int electricity, int recycling, int waste, int compost) {
  int electricityPoints = _electricity(electricity);
  int garbagePoints = garbageBiannually(recycling, waste, compost);
  int userPoints = electricityPoints + garbagePoints;
  return userPoints;
}

int _electricity(int carbonEmissions) {
  // Feb - Apr (64 days) 647 kg of carbon emissions
  // May - June 120 kg of carbon emissions

  // So looking at this i could say for 1 month:
  // High emissions could range from (647 / 2 = 323.5) 250 -> 350.
  // Average emissions could range from 150 -> 250
  // Low emissions could range from 50 -> 150.

  int electricityPoints;
  if (carbonEmissions > 250) {
    electricityPoints = 200;
  } else if (carbonEmissions > 150) {
    electricityPoints = 300;
  } else {
    electricityPoints = 400;
  }

  return electricityPoints;
}

int garbageBiannually(int recycling, int waste, int compost) {
  int garbagePoints = 0;

  if (recycling >= 250) {
    garbagePoints += garbagePoints - 100;
  } else if (recycling >= 150) {
    garbagePoints += garbagePoints - 50;
  }

  if (waste >= 450) {
    garbagePoints += garbagePoints - 200;
  } else if (waste >= 250) {
    garbagePoints += garbagePoints - 100;
  }

  if (compost >= 50) {
    garbagePoints += garbagePoints - 100;
  } else if (compost >= 35) {
    garbagePoints += garbagePoints - 50;
  }

  return garbagePoints;
}

int garbageMonthly(int recycling, int waste, int compost) {
  int garbagePoints = 0;

  if (recycling > 75) {
    garbagePoints = garbagePoints - 50;
  }

  if (waste > 75) {
    garbagePoints = garbagePoints - 50;
  }

  if (compost > 58) {
    garbagePoints = garbagePoints - 50;
  }

  return garbagePoints;
}

List<String> getUserClass(int userPoints) {
  String userClass = '';
  String userMessage = '';
  List<String> userClassAndMessage = <String>[];

  if (userPoints >= 400) {
    userClass = 'A';
    userMessage = 'Your doing great work';
  } else if (userPoints >= 300) {
    userClass = 'B';
    userMessage = 'Your doing good work';
  } else if (userPoints >= 200) {
    userClass = 'C';
    userMessage = 'Keep it up';
  } else {
    userClass = 'D';
    userMessage = 'Keep trying';
  }
  userClassAndMessage.add(userClass);
  userClassAndMessage.add(userMessage);

  return userClassAndMessage;
}

int calculateKWHtoKG(int kwh) {
  int co2kg;
  double co2kgWork;

  co2kgWork = kwh / 0.721 * 0.168;

  co2kg = co2kgWork.round();

  return co2kg;
}
