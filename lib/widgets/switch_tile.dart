import 'package:flutter/material.dart';

class SwitchTile extends StatefulWidget {
  bool filterset;

  SwitchTile({
    Key? key,
    required this.filterset,
  }) : super(key: key);

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: widget.filterset,
      onChanged: (isChecked) {
        setState(() {
          widget.filterset = isChecked;
        });
      },
      title: Text(
        'Gluten-free',
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      subtitle: Text(
        'Only include gluten-free meals',
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
