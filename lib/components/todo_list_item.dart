import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({
    super.key,
    required this.value,
    this.onChanged,
    required this.title,
    required this.dateTime,
  });

  final bool value;
  final Function(bool?)? onChanged;
  final String title;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Checkbox(value: value, onChanged: onChanged),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
                Text(
                  dateTime.toString(),
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
