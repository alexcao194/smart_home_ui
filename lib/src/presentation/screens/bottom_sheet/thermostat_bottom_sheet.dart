import 'package:flutter/material.dart';

import 'app_bottom_sheet.dart';
import 'widget/light_button.dart';

class ThermostatBottomSheet extends StatefulWidget {
  const ThermostatBottomSheet({Key? key}) : super(key: key);

  @override
  State<ThermostatBottomSheet> createState() => _ThermostatBottomSheetState();
}

class _ThermostatBottomSheetState extends State<ThermostatBottomSheet> {
  double temperature = 24;

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          const Text("Thermostat", style: TextStyle(color: Colors.white, fontSize: 22)),
          const SizedBox(height: 16.0),
          const Text("Temperature", style: TextStyle(color: Colors.white)),
          Row(
            children: [
              const Icon(Icons.thermostat,
                color: Colors.redAccent,
              ),
              Expanded(
                child: Slider(
                  divisions: 100,
                  value: temperature / 100,
                  activeColor: Colors.redAccent,
                  onChanged: (value) {
                    setState(() {
                      temperature = value * 100;
                    });
                  }
                ),
              ),
              Text("${temperature.toInt()} độ C", style: const TextStyle(color: Colors.redAccent))
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Rooms", style: TextStyle(color: Colors.white)),
          ),
          const RoomButton(label: "Bedroom", color: Colors.redAccent),
          const RoomButton(label: "Kitchen", color: Colors.redAccent),
          const RoomButton(label: "Living room", color: Colors.redAccent),
          const RoomButton(label: "Working room", color: Colors.redAccent),
          const SizedBox(height: 32.0)
        ],
      ),
    );
  }
}
