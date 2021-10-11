import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFF171D3C).withOpacity(0.3)),
      ),
      onPressed: () {}, child: Text('d'));
  }
}
