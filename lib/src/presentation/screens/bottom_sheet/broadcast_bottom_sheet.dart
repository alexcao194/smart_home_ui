import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/app_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/widget/notification_container.dart';

class BroadcastBottomSheet extends StatelessWidget {
  const BroadcastBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Thông báo cảnh báo", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(height: 12.0),
          NotificationContainer(
            label: "Thermostat",
            icons: Icons.thermostat,
            leading: "Warning",
            description: "Nhiệt độ phòng đang quá thấp, sẽ ảnh hướng tới sức khỏe.",
            time: "1 giờ trước",
          ),
          SizedBox(height: 8.0),
          NotificationContainer(
            label: "Cameras",
            icons: Icons.video_camera_front_outlined,
            leading: "Warning",
            description: "Phát hiện hành động bất thường, vui lòng kiểm tra để đảm bảo an toàn.",
            time: "28 phút trước",
          ),
          SizedBox(height: 8.0),
          Text("Thông báo tĩnh", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(height: 12.0),
          NotificationContainer(
            label: "Wi-Fi",
            icons: Icons.wifi,
            leading: "Smart wifi",
            description: "Phát hiện mạng khả dụng.",
            time: "1 ngày trước",
          ),
          SizedBox(height: 8.0),
          NotificationContainer(
            label: "Air Condition",
            icons: Icons.waves,
            leading: "Time up",
            description: "5 phút cho tới khi điều hòa bật.",
            time: "5 ngày trước",
          ),
          SizedBox(height: 8.0),
          NotificationContainer(
            label: "Smart Home",
            icons: Icons.home,
            leading: "Installation",
            description: "Đã thiết lập xong.",
            time: "26 ngày trước",
          )
        ],
      ),
    );
  }
}