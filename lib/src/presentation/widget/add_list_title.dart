import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/constant/app_colors.dart';

class AddListTitle extends StatelessWidget {
  const AddListTitle({
    Key? key,
    required this.icon,
    required this.label,
    this.onTap
  }) : super(key: key);

  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0) + const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          children: [
            Icon(icon, color: AppColors.icon, size: 24),
            const SizedBox(width: 24.0),
            Text(label, style: const TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
