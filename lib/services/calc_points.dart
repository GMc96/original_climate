import 'package:flutter/material.dart';

int _electricity(double carbonEmissions) {
  // Feb - Apr (64 days) 647 kg of carbon emissions
  // May - June 120 kg of carbon emissions

  // So looking at this i could say for 1 month:
  // High emissions could range from (647 / 2 = 323.5) 250 -> 350.
  // Average emissions could range from 150 -> 250
  // Low emissions could range from 50 -> 150.

  int electricityPoints;
  if (carbonEmissions > 250) {
    electricityPoints = 100;
  } else if (carbonEmissions > 150) {
    electricityPoints = 200;
  } else {
    electricityPoints = 300;
  }

  return electricityPoints;
}

int _garbage_biannually(int recycling, int waste, int compost) {
  int garbagePoints = 0;

  if (recycling > 450) {
    garbagePoints = garbagePoints - 300;
  }

  if (waste > 450) {
    garbagePoints = garbagePoints - 300;
  }

  if (compost > 350) {
    garbagePoints = garbagePoints - 300;
  }

  return garbagePoints;
}

int _garbage_monthly(int recycling, int waste, int compost) {
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
