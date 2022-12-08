import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/app_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/widget/list_clock.dart';

class ClockBottomSheet extends StatelessWidget {
  const ClockBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          const Text("Clock", style: TextStyle(color: Colors.white, fontSize: 22)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5)
              ),
            ),
          ),
          const ListClock(
            hour: '1',
            minute: '00',
            description: "Chuông báo một lần",
          ),
          const ListClock(
            hour: '14',
            minute: '30',
            description: "Ngày làm việc",
          ),
          const ListClock(
            hour: '16',
            minute: '00',
            description: "Mỗi ngày",
          ),
          const ListClock(
            hour: '18',
            minute: '00',
            description: "Chuông báo một lần",
          ),
          const ListClock(
            hour: '20',
            minute: '30',
            description: "Ngày làm việc",
          ),
          const ListClock(
            hour: '22',
            minute: '00',
            description: "Mỗi ngày",
          )
        ],
      ),
    );
  }
}


