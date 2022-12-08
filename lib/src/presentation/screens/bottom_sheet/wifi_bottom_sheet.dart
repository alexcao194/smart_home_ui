import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/app_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/widget/list_wifi_item.dart';

class WifiBottomSheet extends StatelessWidget {
  const WifiBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          const Text("Wi-Fi", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 0.1,
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.5)
              ),
            ),
          ),
          const ListWifiItem(label: "P63", isConnect: true),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 0.1,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5)
              ),
            ),
          ),
          const ListWifiItem(label: "PTIT", isConnect: false),
          const ListWifiItem(label: "vinaphone wifi", isConnect: false),
          const ListWifiItem(label: "wifi free", isConnect: false),
          const ListWifiItem(label: "cao việt đức", isConnect: false),
          const ListWifiItem(label: "realme X", isConnect: false),
          const ListWifiItem(label: "iphone 12", isConnect: false)
        ],
      ),
    );
  }
}
