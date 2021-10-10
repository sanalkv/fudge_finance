import 'package:fudge_financial/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page:HomeView,initial: true),
    // MaterialRoute(page:CoinDetailsView),
  ],
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
