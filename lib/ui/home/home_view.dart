import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fudge_financial/ui/shared/helpers.dart';
import 'package:fudge_financial/ui/widget/linear_progress_widget.dart';
import 'package:fudge_financial/ui/widget/recent_transaction_widget.dart';
import 'package:fudge_financial/ui/widget/response_handler.dart';
import 'package:fudge_financial/ui/widget/user_widget.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Column(
          children: [
            Container(
              padding: defaultPadding,
              decoration: BoxDecoration(
                color: Color(0xFF171D3C),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hola, ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Michael',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Te tenemos excelentes noticias para ti',
                              style: TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/bell.png',
                          height: 20,
                          width: 20,
                          color: Colors.white,
                        ),
                        Container(
                          margin: leftPadding,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: Image.asset(
                            'assets/images/user.png',
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '\$56,271.68',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '+\$9,736',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.arrow_upward,
                          color: Color(0xFF3CD942),
                          size: 18,
                        ),
                        Text(
                          ' 2.3%',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(
                              0xFF3CD942,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'ACCOUNT BALANCE',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '12',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Following',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white.withOpacity(0.44),
                                ),
                              ),
                            ],
                          ),
                          VerticalDivider(
                            color: Colors.white,
                          ),
                          Column(
                            children: [
                              Text(
                                '36',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Transactions',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white.withOpacity(0.44),
                                ),
                              ),
                            ],
                          ),
                          VerticalDivider(
                            color: Colors.white,
                          ),
                          Column(
                            children: [
                              Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Bills',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white.withOpacity(0.44),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: topPadding + bottomPadding,
                children: [
                  Padding(
                    padding: leftPadding + rightPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PERFORMANCE CHART',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        GestureDetector(
                          child: Image.asset(
                            'assets/images/more_button.png',
                            width: 55,
                            height: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //chart
                  Padding(
                    padding: leftPadding + rightPadding + topPadding,
                    child: Text(
                      'TOP USERS FROM YOUR COMMUNITY',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ),
                  Container(
                    margin: topPadding,
                    height: 75,
                    child: ResponseHandler(
                      isBusy: model.isBusy,
                      error: model.hasError,
                      hasError: model.hasError,
                      child: ListView.separated(
                        separatorBuilder: (_, __) => SizedBox(
                          width: 23,
                        ),
                        itemCount: model.top10Users?.length ?? 0,
                        padding: leftPadding + rightPadding,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return UserWidget(
                            name: model.top10Users?[index].username ?? 'N/A',
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: defaultPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'RECENT TRANSACTIONS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        GestureDetector(
                          child: Image.asset(
                            'assets/images/more_button.png',
                            width: 55,
                            height: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.separated(
                      separatorBuilder: (_, __) => SizedBox(
                            height: 23,
                          ),
                      shrinkWrap: true,
                      itemCount: 10,
                      padding: leftPadding + rightPadding,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_, __) {
                        return RecentTransactionWidget();
                      }),
                  Padding(
                    padding: defaultPadding,
                    child: Text(
                      'FINANCIAL GOALS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: leftPadding + rightPadding,
                    child: LinearProgressWidget(color: Color(0xFF147AD6), progress: 0.3),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: leftPadding + rightPadding,
                    child: LinearProgressWidget(color: Color(0xFFEC6666), progress: 0.75),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: leftPadding + rightPadding,
                    child: LinearProgressWidget(color: Color(0xFF79D2DE), progress: 0.60),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
