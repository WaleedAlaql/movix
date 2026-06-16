import 'package:flutter/material.dart';

class MovieInfoChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const MovieInfoChip({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white54, size: 16),
        SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(
            color: Colors.white54,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
