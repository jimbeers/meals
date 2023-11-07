import 'package:flutter/material.dart';

class RecipeStepsWidget extends StatelessWidget {
  final List<String> steps;

  RecipeStepsWidget({required this.steps});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: steps.asMap().entries.map((entry) {
        int stepNumber = entry.key + 1;
        String stepText = entry.value;

        return Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 8),
          child: Text(
            '$stepNumber. $stepText',
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        );
      }).toList(),
    );
  }
}
