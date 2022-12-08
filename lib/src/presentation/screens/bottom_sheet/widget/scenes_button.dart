import 'package:flutter/material.dart';

class ScenesButton extends StatefulWidget {
  const ScenesButton({
    Key? key,
    required this.label,
    required this.icons
  }) : super(key: key);

  final IconData icons;
  final String label;

  @override
  State<ScenesButton> createState() => _ScenesButtonState();
}

class _ScenesButtonState extends State<ScenesButton> with TickerProviderStateMixin {

  late AnimationController controller;


  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 450));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(widget.icons),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(widget.label, style: const TextStyle(fontWeight: FontWeight.w700)),
                ),
                IconButton(onPressed: () {
                  setState(() {
                    if(controller.isCompleted) {
                      controller.reverse();
                    } else {
                      controller.forward();
                    }
                  });
                }, icon: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  progress: controller,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
