import 'package:flutter/material.dart';

class AutomationButton extends StatefulWidget {
  const AutomationButton({
    Key? key,
    required this.label
  }) : super(key: key);

  final String label;

  @override
  State<AutomationButton> createState() => _AutomationButtonState();
}

class _AutomationButtonState extends State<AutomationButton> {

  double value = 12;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.label, style: const TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Expanded(
                    child: Slider(
                        activeColor: Colors.grey,
                        divisions: 24,
                        value: value / 24,
                        onChanged: (value) {
                          setState(() {
                            this.value = (value * 24);
                          });
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text("${value.toInt()}h", style: const TextStyle(fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}