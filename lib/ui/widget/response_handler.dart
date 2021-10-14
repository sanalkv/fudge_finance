import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fudge_financial/core/helpers/error_handler.dart';
import 'package:fudge_financial/ui/shared/helpers.dart';

import 'loader.dart';

class ResponseHandler extends StatelessWidget {
  const ResponseHandler({
    Key? key,
    required this.isBusy,
    required this.hasError,
    required this.error,
    required this.child,
  }) : super(key: key);
  final bool isBusy;
  final bool hasError;
  final dynamic error;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: isBusy 
          ? const Center(
              child: Loader(),
            ) 
          : hasError
              ? Center(
                  child: Padding(
                    padding: defaultPadding ,
                    child: Text(
                     errorHandler(error),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : child,
    );
  }
}
