import 'package:get/get.dart';

import 'package:deepin/app/modules/home/bindings/home_binding.dart';
import 'package:deepin/app/modules/home/views/home_view.dart';
import 'package:deepin/app/modules/post_detail/bindings/post_detail_binding.dart';
import 'package:deepin/app/modules/post_detail/views/post_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.POST_DETAIL,
      page: () => PostDetailView(),
      binding: PostDetailBinding(),
    ),
  ];
}
