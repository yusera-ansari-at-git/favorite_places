import 'package:favorite_places/main.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import "dart:io";

const kUuid = Uuid();

class Place {
  Place({required this.title, required this.image}) : id = kUuid.v4();
  final String title;
  final String id;
  final File image;
}
