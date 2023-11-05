import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);
  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [...state, newPlace];
  }
}

final userPlaceProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);
