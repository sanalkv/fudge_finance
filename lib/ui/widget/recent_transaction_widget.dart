import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentTransactionWidget extends StatelessWidget {
  const RecentTransactionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/profile.png',
          height: 35,
          width: 35,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'John Doe',
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'United Kingdom',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '80,000 AED',
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '11 Aug 2021',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 16,
        ),
        Image.asset(
          'assets/images/check_circle.png',
          height: 12,
          width: 12,
        ),
      ],
    );
  }
}
