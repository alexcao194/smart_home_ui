import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/constant/app_assets.dart';
import 'package:smart_home_ui/src/constant/app_colors.dart';

import '../widget/home_button.dart';
import 'add_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const AddScreen()));
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0)
                ),
                child: Image.asset(AppAssets.avatar, fit: BoxFit.cover)
              ),
            ),
          )
        ],
      ),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.maxFinite),
            const Text("Alex's Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28
              ),
            ),
            const SizedBox(height: 64.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                HomeButton(
                  background: Color.fromARGB(102, 252, 252, 112),
                  primary: Color.fromARGB(255, 252, 252, 112),
                  icons: Icons.light_mode_outlined,
                  label: 'Lights',
                  type: BottomSheets.lights,
                ),
                HomeButton(
                  background: Color.fromARGB(102, 112, 252, 161),
                  primary: Color.fromARGB(255, 112, 252, 161),
                  icons: Icons.ondemand_video,
                  label: "Television",
                  type: BottomSheets.televisions,
                ),
                HomeButton(
                  background: Color.fromARGB(102, 180, 112, 252),
                  primary: Color.fromARGB(255, 180, 112, 252),
                  icons: Icons.note,
                  label: "Notes",
                  type: BottomSheets.notes,
                ),
                HomeButton(
                  background: Color.fromARGB(102, 112, 252, 219),
                  primary: Color.fromARGB(255, 112, 252, 219),
                  icons: Icons.broadcast_on_home,
                  label: "Broadcast",
                  type: BottomSheets.broadcast,
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                HomeButton(
                  background: Color.fromARGB(102, 255, 117, 117),
                  primary: Color.fromARGB(255, 255, 117, 117),
                  icons: Icons.thermostat,
                  label: 'Thermostat',
                  type: BottomSheets.thermostat,
                ),
                HomeButton(
                  background: Color.fromARGB(102, 180, 112, 252),
                  primary: Color.fromARGB(255, 180, 112, 252),
                  icons: Icons.video_camera_back_outlined,
                  label: "Cameras",
                  type: BottomSheets.cameras,
                ),
                HomeButton(
                  background: Color.fromARGB(102, 112, 252, 219),
                  primary: Color.fromARGB(255, 112, 252, 219),
                  icons: Icons.wifi,
                  label: "Wi-Fi",
                  type: BottomSheets.wifi,
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                HomeButton(
                  background: Color.fromARGB(102, 252, 112, 175),
                  primary: Color.fromARGB(255, 252, 112, 175),
                  icons: Icons.timelapse_outlined,
                  label: 'Clock',
                  type: BottomSheets.clock,
                ),
                HomeButton(
                  background: Colors.transparent,
                  primary: Colors.white70,
                  icons: Icons.settings,
                  label: "Settings",
                  type: BottomSheets.settings,
                  rounded: true,
                )
              ],
            ),
            Image.asset(AppAssets.smart)
          ],
        ),
      ),
    );
  }
}