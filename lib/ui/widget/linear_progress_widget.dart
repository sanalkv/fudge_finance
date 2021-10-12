import 'package:flutter/material.dart';

class LinearProgressWidget extends StatelessWidget {
  final Color color;
  final double progress;
  const LinearProgressWidget({
    Key? key,
    required this.color,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'XX of total XX',
          style: TextStyle(
            color: Color(
              0xFF7C828A,
            ),
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        LinearProgressIndicator(
          color: color,
          value: progress,
          backgroundColor: Colors.blueGrey.withOpacity(0.3),
        )
      ],
    );
  }
}
