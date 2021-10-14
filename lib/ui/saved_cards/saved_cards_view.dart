import 'package:flutter/material.dart';
import 'package:fudge_financial/ui/shared/helpers.dart';
import 'package:fudge_financial/ui/widget/pagination_widget.dart';
import 'package:fudge_financial/ui/widget/recent_transaction_widget.dart';
import 'package:fudge_financial/ui/widget/saved_card_widget.dart';
import 'package:stacked/stacked.dart';

import 'saved_cards_viewmodel.dart';

class SavedCardsView extends StatefulWidget {
  const SavedCardsView({Key? key}) : super(key: key);

  @override
  _SavedCardsViewState createState() => _SavedCardsViewState();
}

class _SavedCardsViewState extends State<SavedCardsView> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.8);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SavedCardsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          titleSpacing: 0,
          centerTitle: false,
          title: Row(
            children: [
              IconButton(
                onPressed: () => model.goBack(),
                icon: Image.asset(
                  'assets/images/arrow_back.png',
                  height: 12,
                  width: 12,
                ),
              ),
              Text(
                'My saved cards',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
          actions: [
            Image.asset(
              'assets/images/menu.png',
              height: 12,
              width: 12,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: DefaultTabController(
          length: 10,
          child: Column(
            children: [
              Container(
                height: 180,
                child: PageView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    itemBuilder: (_, index) {
                      return SavedCardWidget();
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              PaginationWidget(
                totalPage: 5,
                pageController: _pageController,
              ),
              SizedBox(
                height: 20,
              ),
              TabBar(
                isScrollable: true,
                unselectedLabelColor: Color(0xFF9F9F9F),
                labelColor: Colors.black,
                indicatorColor: Color(0xFF707070),
                indicatorWeight: 4,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: leftPadding + rightPadding + topPadding / 2 + bottomPadding / 2,
                tabs: List<Widget>.generate(
                  10,
                  (int index) => Text(
                    'Menu title $index',
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: List<Widget>.generate(
                    10,
                    (int index) => ListView(
                      padding: defaultPadding,
                      children: [
                        Text(
                          'RECENT TRANSACTIONS',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.separated(
                          separatorBuilder: (_, __) => SizedBox(
                            height: 20,
                          ),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (_, __) {
                            return RecentTransactionWidget();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SavedCardsViewModel(),
    );
  }
}
