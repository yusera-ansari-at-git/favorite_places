import 'dart:ffi';

import 'package:favorite_places/main.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import "dart:io";

const kUuid = Uuid();

class PlaceLocation {
  const PlaceLocation({required this.latitude, required this.longitude});
  final double longitude;
  final double latitude;
}

class Place {
  Place(
      {required this.title,
      required this.image,
      required this.placeLocation,
      String? id})
      : id = id ?? kUuid.v4();
  final String title;
  final String id;
  final File image;
  final PlaceLocation placeLocation;
}
