import 'package:flutter/material.dart';

class ListWifiItem extends StatelessWidget {
  const ListWifiItem({
    Key? key,
    required this.label,
    required this.isConnect,
  }) : super(key: key);

  final String label;
  final bool isConnect;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {  },
      child: Row(
        children: [
          const Icon(Icons.wifi, color: Colors.white),
          const SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(color: Colors.white)),
              if(isConnect) const SizedBox(height: 2.0),
              if(isConnect) const Text("Đã kết nối", style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          )
        ],
      ),
    );
  }
}
