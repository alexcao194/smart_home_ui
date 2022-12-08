import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/constant/app_colors.dart';

import '../widget/add_list_title.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Thêm và quản lý",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w400
            )
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_sharp),
        ),
        actions: [
          PopupMenuButton(
            color: AppColors.subBackground,
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text("Trợ giúp", style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem(
                child: Text("Phản hồi", style: TextStyle(color: Colors.white)),
              ),
            ]
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Thêm vào nhà', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              AddListTitle(icon: Icons.add_circle, label: "Thêm vào thiết bị"),
              AddListTitle(icon: Icons.person_add, label: "Thêm thành viên trong nhà"),
              AddListTitle(icon: Icons.speaker_group, label: "Tạo nhóm loa"),
              AddListTitle(icon: Icons.home, label: "Tạo nhà mới"),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Quản lý dịch vụ', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              AddListTitle(icon: Icons.music_note, label: "Nhạc"),
              AddListTitle(icon: Icons.video_collection, label: "Video"),
              AddListTitle(icon: Icons.card_giftcard, label: "Chiết khấu và phần thưởng"),
              AddListTitle(icon: Icons.person_rounded, label: "Dịch vụ chuyên nghiệp"),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Ưu đãi', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              AddListTitle(icon: Icons.discount, label: "Ưu đãi"),
            ],
          ),
        ),
      ),
    );
  }
}
