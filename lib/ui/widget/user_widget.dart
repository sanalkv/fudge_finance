import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  final String name;
  const UserWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/user.png',
          height: 50,
          width: 50,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
