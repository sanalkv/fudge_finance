import 'package:fudge_financial/core/services/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SavedCardsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void goBack() =>
    _navigationService.back();
}
