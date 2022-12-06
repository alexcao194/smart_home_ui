import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/lights_bottom_sheet.dart';

enum BottomSheets {
  lights,
  media,
  callHome,
  broadcast,
  thermostat,
  cameras,
  wifi,
  routines,
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
                              case BottomSheets.media:
                                return const LightBottomSheet();
                              case BottomSheets.callHome:
                                return const LightBottomSheet();
                              case BottomSheets.broadcast:
                                return const LightBottomSheet();
                              case BottomSheets.thermostat:
                                return const LightBottomSheet();
                              case BottomSheets.cameras:
                                return const LightBottomSheet();
                              case BottomSheets.wifi:
                                return const LightBottomSheet();
                              case BottomSheets.routines:
                                return const LightBottomSheet();
                              case BottomSheets.settings:
                                return const LightBottomSheet();
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