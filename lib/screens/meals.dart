import 'package:flutter/material.dart';
import 'package:meals/widgets/meal_item.dart';

import '../models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    Key? key,
    this.title,
    required this.meals,
    required this.onToggleFavorite,
  }) : super(key: key);

  final String? title;
  final List<Meal> meals;
  final void Function(Meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    var bodyDisplay = meals.isEmpty
        ? Center(
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'No Meals',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Try selecting a different catecory!",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ],
          ))
        : ListView.builder(
            itemCount: meals.length,
            itemBuilder: (ctx, index) => MealItem(
                meal: meals[index], onToggleFavorite: onToggleFavorite),
          );

    if (title == null) {
      return bodyDisplay;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: bodyDisplay);
  }
}
