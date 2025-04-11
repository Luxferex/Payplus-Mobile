import 'package:get/get.dart';

import '../modules/FriendPage/bindings/friend_page_binding.dart';
import '../modules/FriendPage/views/friend_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FRIEND_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FRIEND_PAGE,
      page: () => const FriendPageView(),
      binding: FriendPageBinding(),
    ),
  ];
}
