import 'package:flutter/material.dart';

import '../../../../constant/app_colors.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({
    Key? key,
    required this.icons,
    required this.label,
    required this.time,
    required this.description,
    required this.leading,
  }) : super(key: key);

  final IconData icons;
  final String label;
  final String leading;
  final String time;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: AppColors.subBackground
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                children: [
                  Icon(icons, color: Colors.white, size: 18),
                  const SizedBox(width: 4.0),
                  Text("$label ~ $time", style: const TextStyle(color: Colors.white)),
                ]
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(leading, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            Text(description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white)
            )
          ],
        ),
      ),
    );
  }
}
