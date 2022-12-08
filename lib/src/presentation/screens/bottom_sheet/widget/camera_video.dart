import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/constant/app_assets.dart';

class CameraVideo extends StatelessWidget {
  const CameraVideo({
    Key? key,
    required this.video,
    required this.name
  }) : super(key: key);

  final String name;
  final String video;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Camera $name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                IconButton(
                  icon: const Icon(Icons.power_settings_new, color: Colors.red),
                  onPressed: () {},
                )
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Stack(
                children: [
                  Image.asset(video),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("live", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
