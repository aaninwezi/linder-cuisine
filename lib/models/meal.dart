import 'package:flutter/foundation.dart';

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final int duration;
  final int price;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.duration,
    @required this.imageUrl,
    @required this.price,
  });
}
