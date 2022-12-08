import 'package:flutter/material.dart';

class RoomButton extends StatefulWidget {
  const RoomButton({
    Key? key,
    required this.color,
    required this.label
  }) : super(key: key);

  final String label;
  final Color color;

  @override
  State<RoomButton> createState() => _RoomButtonState();
}

class _RoomButtonState extends State<RoomButton> {

  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white60),
                borderRadius: const BorderRadius.horizontal(left: Radius.circular(5.0))
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.label, style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white60),
                borderRadius: const BorderRadius.horizontal(right: Radius.circular(5.0))
              ),
              child: Switch(
                value: isActive,
                activeColor: widget.color,
                onChanged: (value) {
                  setState(() {
                    isActive = value;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}