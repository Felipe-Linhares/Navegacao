import 'dart:core';

enum Complexity {
  simple,
  medium,
  difficult,
}
enum Cost {
  cheap,
  fair,
  expensive,
}

class Meal {
  String id;
  List categories;
  String title;
  String imageUrl;
  List ingredients;
  List steps;
  int duration;
  bool isGlutenFree;
  bool isLactoseFree;
  bool isVegan;
  bool isVegetarian;
  Complexity complexity;
  Cost cost;

  Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return "Simples";
      case Complexity.medium:
        return "Normal";
      case Complexity.difficult:
        return "Difícil";
      default:
        return "Desconhecido";
    }
  }

  String get costText {
    switch (cost) {
      case Cost.cheap:
        return "Barato";
      case Cost.fair:
        return "Justo";
      case Cost.expensive:
        return "Caro";
      default:
        return "Desconhecido";
    }
  }
}
