import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/app_bottom_sheet.dart';

import 'widget/light_button.dart';

class LightBottomSheet extends StatefulWidget {
  const LightBottomSheet({Key? key}) : super(key: key);

  @override
  State<LightBottomSheet> createState() => _LightBottomSheetState();
}

class _LightBottomSheetState extends State<LightBottomSheet> {

  double brightness = 0.5;

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          const Text("Lighting", style: TextStyle(color: Colors.white, fontSize: 22)),
          const SizedBox(height: 16.0),
          const Text("Brightness", style: TextStyle(color: Colors.white)),
          Row(
            children: [
              const Icon(Icons.light_mode_outlined,
                color: Colors.yellowAccent,
              ),
              Expanded(
                child: Slider(
                  value: brightness,
                  activeColor: Colors.yellowAccent,
                  onChanged: (value) {
                    setState(() {
                      brightness = value;
                    });
                  }
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Rooms", style: TextStyle(color: Colors.white)),
          ),
          const RoomButton(label: "Bedroom", color: Colors.yellowAccent),
          const RoomButton(label: "Kitchen", color: Colors.yellowAccent),
          const RoomButton(label: "Living room", color: Colors.yellowAccent),
          const RoomButton(label: "Working room", color: Colors.yellowAccent),
          const SizedBox(height: 32.0)
        ],
      ),
    );
  }
}


