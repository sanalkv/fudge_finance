import 'package:fudge_financial/core/model/user_model.dart';
import 'package:fudge_financial/core/services/api/api_service.dart';
import 'package:fudge_financial/core/services/locator.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel() {
    fetchUsers();
  }

  final _apiService = locator<ApiService>();

  List<UserModel>? _top10Users;

  List<UserModel>? get top10Users => _top10Users;

  Future<void> fetchUsers() async => _top10Users = await runBusyFuture<List<UserModel>?>(_apiService.getUserList());
}
