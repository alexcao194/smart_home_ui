import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/constant/app_assets.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/app_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/widget/camera_video.dart';

class CameraBottomSheet extends StatelessWidget {
  const CameraBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          const Text("Cameras", style: TextStyle(color: Colors.white, fontSize: 22)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5)
              ),
            ),
          ),
          const CameraVideo(name: '1', video: AppAssets.video),
          const CameraVideo(name: '2', video: AppAssets.bedroom),
          const CameraVideo(name: '3', video: AppAssets.livingRoom),
        ],
      ),
    );
  }
}

