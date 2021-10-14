import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final double? size;

  const Loader({
    Key? key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? SizedBox(
            height: size ?? 20,
            width: size ?? 20,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 2.5,
            ),
          )
        : const CupertinoActivityIndicator();
  }
}
