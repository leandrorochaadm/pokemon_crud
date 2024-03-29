import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String label;
  final String? description;

  const ItemWidget({
    super.key,
    required this.label,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("$label:",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        const SizedBox(width: 14),
        Text(
          description ?? '',
          style: const TextStyle(fontSize: 22),
        ),
      ],
    );
  }
}
