import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child:Center(child: child),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [

          // darker shadow on the bottom right
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 16,
            offset: const Offset(4, 4),
          ),

          // lighter shadow on the top left
          const BoxShadow(
            color: Colors.white,
            blurRadius: 16,
            offset: Offset(-4, -4),
          ),
        ]
      ),
    );
  }
}
