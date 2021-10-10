import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'saved_cards_viewmodel.dart';

class SavedCardsView extends StatelessWidget {
 const SavedCardsView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<SavedCardsViewModel>.reactive(
     builder: (context, model, child) => Scaffold(),
     viewModelBuilder: () => SavedCardsViewModel(),
   );
 }
}