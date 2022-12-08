import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/app_bottom_sheet.dart';
import 'package:smart_home_ui/src/presentation/screens/bottom_sheet/widget/note.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          const Text("Notes", style: TextStyle(color: Colors.white, fontSize: 22)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5)
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: const [
                    Note(
                      label: "Phỏng vấn",
                      content: "Phỏng vấn Flutter/Dart 5h chiều",
                      color: Colors.cyanAccent,
                    ),
                    Note(
                      label: "Material Design",
                      color: Colors.orangeAccent,
                      content: "Material Design is a foundation upon which applications for Google platforms are build. These principles are intended for a wide audience.",
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: const [
                    Note(
                      label: "Flutter",
                      content: "You can build apps with Flutter using any text editor combined with Flutter’s command-line tools. However, we recommend using one of our editor plugins for an even better experience. These plugins provide you with code completion, syntax highlighting, widget editing assists, run & debug support, and more.",
                      color: Colors.yellowAccent,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
