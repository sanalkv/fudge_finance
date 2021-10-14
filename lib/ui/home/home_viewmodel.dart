import 'package:fudge_financial/core/app/app.router.dart';
import 'package:fudge_financial/core/model/user_model.dart';
import 'package:fudge_financial/core/services/api/api_service.dart';
import 'package:fudge_financial/core/services/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel() {
    fetchUsers();
  }

  final _apiService = locator<ApiService>();
  final _navigationService = locator<NavigationService>();

  List<UserModel>? _top10Users;

  List<UserModel>? get top10Users => _top10Users;

  Future<void> fetchUsers() async => _top10Users = await runBusyFuture<List<UserModel>?>(_apiService.getUserList());

  void goToSavedCardsView() => _navigationService.navigateTo(Routes.savedCardsView);
}
