import 'package:flutter/material.dart';

class PaginationWidget extends StatelessWidget {
  final PageController pageController;
  final totalPage;
  const PaginationWidget({Key? key, required this.pageController, required this.totalPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: pageController,
        builder: (_, __) {
          final page = pageController.page?.round() ?? 0;
         return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              totalPage,
              (index) => AnimatedContainer(
                margin: EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  color: page == index ? Colors.black : Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
                duration: Duration(milliseconds: 200),
                height: 4,
                width: page == index ? 14 : 7,
              ),
            ),
          );
        });
  }
}
