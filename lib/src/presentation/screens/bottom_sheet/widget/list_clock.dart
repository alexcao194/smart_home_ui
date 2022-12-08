import 'package:flutter/material.dart';

class ListClock extends StatefulWidget {
  const ListClock({
    Key? key,
    required this.hour,
    required this.minute,
    required this.description
  }) : super(key: key);

  final String hour;
  final String description;
  final String minute;

  @override
  State<ListClock> createState() => _ListClockState();
}

class _ListClockState extends State<ListClock> {

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0) + const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${widget.hour} : ${widget.minute}", style: const TextStyle(color: Colors.white, fontSize: 26)),
              Text(widget.description, style: const TextStyle(color: Colors.white))
            ],
          ),
          Switch(
            value: value,
            activeColor: Colors.purpleAccent,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
          })
        ],
      ),
    );
  }
}