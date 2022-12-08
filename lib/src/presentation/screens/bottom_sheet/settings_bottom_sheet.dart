import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/app_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/widget/automation_button.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/widget/scenes_button.dart';

class SettingsBottomSheet extends StatelessWidget {
  const SettingsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Automations", style: TextStyle(color: Colors.white, fontSize: 22)),
          const SizedBox(height: 8.0),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text("Scenes", style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          Table(
            children: const [
              TableRow(
                children: [
                  ScenesButton(
                    label: "Good\nmorning",
                    icons: Icons.light_mode_outlined,
                  ),
                  ScenesButton(
                    label: "Good\nnight",
                    icons: Icons.nightlight_outlined,
                  )
                ]
              ),
              TableRow(
                  children: [
                    ScenesButton(
                      label: "Tea\ntime",
                      icons: Icons.hourglass_bottom,
                    ),
                    SizedBox()
                  ]
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text("Automations", style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          const AutomationButton(
            label: "Turn on the light in",
          ),
          const SizedBox(height: 8.0),
          const AutomationButton(
            label: "Turn on the air condition in",
          )
        ],
      ),
    );
  }
}



