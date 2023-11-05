import 'package:favorite_places/main.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const kUuid = Uuid();

class Place {
  Place({required this.title}) : id = kUuid.v4();
  final String title;
  final String id;
}
