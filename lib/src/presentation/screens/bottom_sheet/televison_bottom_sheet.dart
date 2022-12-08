import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/constant/app_assets.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/app_bottom_sheet.dart';

class TelevisionsBottomSheet extends StatelessWidget {
  const TelevisionsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          const Text("Television", style: TextStyle(color: Colors.white, fontSize: 22)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.5)
              ),
            ),
          ),
          Column(
            children: [
              Image.asset(AppAssets.television),
              const Text("Android Tivi TCL 43 inch L43S5200",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
              )
            ],
          ),
          const SizedBox(height: 16.0),
          Column(
            children: [
              Image.asset(AppAssets.television),
              const Text("Android Tivi TCL 43 inch L43S5200",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
              )
            ],
          )
        ],
      ),
    );
  }
}
