import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Local Meal',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c2',
    title: 'Lunch',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c3',
    title: 'Drinks',
    color: Colors.teal,
  ),
  Category(
    id: 'c4',
    title: 'Snacks',
    color: Colors.deepOrange,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c2',
    ],
    title: 'Fried Rice with Chicken 🤓',
    imageUrl:
        'https://img-global.cpcdn.com/recipes/a3f5568bcc2d947e/1200x630cq70/photo.jpg',
    duration: 25,
    price: 300,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Jollof Rice with Chicken 🤓',
    imageUrl: 'https://i.ytimg.com/vi/I0sntxjUe6U/maxresdefault.jpg',
    duration: 30,
    price: 250,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'Egusi Soup with Manka 💪🏼',
    imageUrl: 'https://i.ytimg.com/vi/5TnTydjhoQw/hqdefault.jpg',
    duration: 30,
    price: 300,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c2',
    ],
    title: 'Beans Stew with DODO 🤓',
    imageUrl:
        'https://i.pinimg.com/originals/d4/06/53/d406536436d2a43c22e217d889c23b1f.jpg',
    duration: 20,
    price: 250,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2',
    ],
    title: 'Chicken Stew 🤓',
    imageUrl:
        'https://img-global.cpcdn.com/recipes/3fe9dbd2b8531d7d/751x532cq70/nigerian-chicken-stew-recipe-main-photo.jpg',
    duration: 20,
    price: 200,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c1',
    ],
    title: 'Waakye with Meat 💪🏼',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKZtUHa9o6BwYP7NvU4BPOZBNy6PkV3ypwlKWFGQaXYN-JegX3BQ&s',
    duration: 20,
    price: 200,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c4',
    ],
    title: 'Puff Puff 🤤',
    imageUrl:
        'https://i0.wp.com/www.kamdora.com/wp-content/uploads/2017/09/Ndudu-by-Fafa-Ghanaian-Puff-Puff-3.png?resize=512%2C339',
    duration: 20,
    price: 30,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c4',
    ],
    title: 'Meat Pies 🤤',
    imageUrl:
        'https://i.pinimg.com/originals/d0/79/89/d0798984df5f71e8ddc791effb86cd6e.jpg',
    duration: 25,
    price: 100,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c4',
    ],
    title: 'Chin-Chin 🤤',
    imageUrl:
        'data:image/jpeg;base64,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',
    duration: 25,
    price: 100,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c3',
    ],
    title: 'Zobo Drink 🍷',
    imageUrl:
        'https://gfb.global.ssl.fastly.net/wp-content/uploads/2015/06/03105143/zobo_drink_roselle_drink-4.png',
    duration: 25,
    price: 100,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c4',
    ],
    title: 'Pancakes 🤤',
    imageUrl: 'https://i.ytimg.com/vi/9Xh2Vn8_42M/maxresdefault.jpg',
    duration: 15,
    price: 100,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c4',
    ],
    title: 'Spring Rolls 🤤',
    imageUrl:
        'https://ocdn.eu/pulscms-transforms/1/R91k9kqTURBXy9lMGNkZDllYzg4ODNkYWE1M2ViYjRkZmIyNDA1YTYyNi5qcGVnkpUDACbNBDjNAmCVAs0DBwDDw4KhMAGhMQE',
    duration: 15,
    price: 100,
  ),
];
