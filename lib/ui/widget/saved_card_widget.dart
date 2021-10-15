import 'package:flutter/material.dart';
import 'package:fudge_financial/ui/shared/helpers.dart';

class SavedCardWidget extends StatelessWidget {
  const SavedCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: defaultPadding,
      margin: rightPadding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [
              Colors.black87,
              Colors.deepPurple,
            ],
          )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Text(
                'VISA',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '4349 6275 4578 7019',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CARD',
                    style: TextStyle(
                      fontSize: 7,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'UGUR ATES',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'EXPIRES',
                    style: TextStyle(
                      fontSize: 7,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '09/22',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
