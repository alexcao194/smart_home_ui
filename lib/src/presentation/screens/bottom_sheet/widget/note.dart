import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  const Note({
    Key? key,
    required this.label,
    required this.content,
    required this.color,
  }) : super(key: key);

  final String label;
  final String content;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: color
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(content)
            ],
          ),
        ),
      ),
    );
  }
}