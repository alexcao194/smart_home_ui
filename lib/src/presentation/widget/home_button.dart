import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/broadcast_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/camera_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/clock_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/lights_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/note_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/settings_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/televison_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/wifi_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/thermostat_bottom_sheet.dart';

enum BottomSheets {
  lights,
  televisions,
  notes,
  broadcast,
  thermostat,
  cameras,
  wifi,
  clock,
  settings
}

class HomeButton extends StatelessWidget {
  const HomeButton({
    Key? key,
    required this.background,
    required this.primary,
    required this.label,
    required this.icons,
    required this.type,
    this.rounded
  }) : super(key: key);

  final Color background;
  final Color primary;
  final IconData icons;
  final String label;
  final bool? rounded;
  final BottomSheets type;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: size.width * 0.2,
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: background,
                      border: (rounded == null || rounded == false) ? null : Border.all(
                        color: Colors.white70,
                      ),
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                    child: IconButton(
                      icon: Icon(icons, color: primary),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (_) {
                            switch(type) {
                              case BottomSheets.lights:
                                return const LightBottomSheet();
                              case BottomSheets.televisions:
                                return const TelevisionsBottomSheet();
                              case BottomSheets.notes:
                                return const NoteBottomSheet();
                              case BottomSheets.broadcast:
                                return const BroadcastBottomSheet();
                              case BottomSheets.thermostat:
                                return const ThermostatBottomSheet();
                              case BottomSheets.cameras:
                                return const CameraBottomSheet();
                              case BottomSheets.wifi:
                                return const WifiBottomSheet();
                              case BottomSheets.clock:
                                return const ClockBottomSheet();
                              case BottomSheets.settings:
                                return const SettingsBottomSheet();
                            }
                          });
                      },
                    ),
                  )
              ),
              const SizedBox(height: 8.0),
              Text(label, style: const TextStyle(color: Colors.white70, fontSize: 12))
            ],
          ),
        ),
      ),
    );
  }
}