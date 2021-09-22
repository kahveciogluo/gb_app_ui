import 'package:flutter/material.dart';

class MyRoute {
  String name;
  String? description;
  MyRouteType myRouteType;
  AssetImage image;
  double? rate;
  int destinationCount;
  Distance distance;
  int? step;
  int? calorie;
  DurationTime? durationTime;

  MyRoute({
    required this.name,
    this.description,
    required this.myRouteType,
    required this.image,
    this.rate,
    required this.destinationCount,
    required this.distance,
    this.step,
    this.calorie,
    this.durationTime
});
}

enum MyRouteType {
  bike,
  car,
  walk,
}

class Distance {
  int amount;
  String unit;

  Distance({required this.amount, required this.unit});
}

class DurationTime {
  int amount;
  String unit;

  DurationTime({required this.amount, required this.unit});
}