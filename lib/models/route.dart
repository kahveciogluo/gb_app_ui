import 'package:flutter/material.dart';

class Route {
  String name;
  String? description;
  RouteType routeType;
  var image;
  double? rate;
  int destinationCount;
  Distance distance;
  int? step;
  int? calory;
  DurationTime? durationTime;

  Route({
    required this.name,
    this.description,
    required this.routeType,
    required this.image,
    this.rate,
    required this.destinationCount,
    required this.distance,
    this.step,
    this.calory,
    this.durationTime
});
}

class RouteType {
  String name;
  Icon icon;

  RouteType({required this.name, required this.icon });
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