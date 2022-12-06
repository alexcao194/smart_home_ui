import 'package:flutter/material.dart';
import 'package:smart_home_ui/src/constant/app_colors.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
        color: AppColors.background
      ),
      child: child,
    );
  }
}
