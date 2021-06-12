import 'package:deepin/api/deepin.dart';
import 'package:deepin/config/enum.dart';
import 'package:deepin/models/deepin_banner_json_data.dart';
import 'package:deepin/models/depin_user_total_news.dart';
import 'package:deepin/utils/pageutils.dart';
import 'package:deepin/utils/qs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<DeepinBannerJsonData> bannerListData = [];

  DepinUserTotalNews? userTotalNews;

  SplitPostsQueryString queryString = SplitPostsQueryString();

  PageUtils? pageListData;

  bool isLoading = false;

  handleRefreshPost(PageNextAndPrev action) {
    var _next = false;
    if (pageListData == null || isLoading) return;
    if (action == PageNextAndPrev.next && pageListData!.isNext) {
      queryString.offset++;
      _next = true;
    } else if (action == PageNextAndPrev.prev && pageListData!.isPrev) {
      queryString.offset--;
      _next = true;
    }
    if (_next) getHomePosts();
  }

  int get humanCurrentPage {
    if (pageListData == null) return 0;
    var i = pageListData!.currentPage as int;
    return i + 1;
  }

  SearchPostsQueryStringOrder get qsOrder {
    return queryString.order;
  }

  set qsOrder(SearchPostsQueryStringOrder v) {
    queryString.order = v;
  }

  SearchPostsQueryStringWhere get qsWhere {
    return queryString.where;
  }

  set qsWhere(SearchPostsQueryStringWhere v) {
    queryString.where = v;
  }

  void changeQueryStringOrder(SearchPostsQueryStringOrder qs) {
    qsOrder = qs;
    update();
    cleanOffsetGetPosts();
  }

  void changeQueryStringWhere(SearchPostsQueryStringWhere qs) {
    qsWhere = qs;
    update();
    cleanOffsetGetPosts();
  }

  void cleanOffsetGetPosts() {
    queryString.offset = 0;
    update();
    getHomePosts();
  }

  @override
  void onInit() async {
    super.onInit();
    renderHomePageInitFunc();
  }

  @override
  void onReady() {
    super.onReady();
  }

  renderHomePageInitFunc() async {
    await getUserTotalNew();
    await getHomeBanerList();
    await getHomePosts();
  }

  getHomeBanerList() async {
    var data = await DeepinAppApi.getHomeBanner();
    bannerListData = data;
    // print("更新banner");
    update();
  }

  getUserTotalNew() async {
    var data = await DeepinAppApi.getUserTotalNews();
    if (data != null) {
      userTotalNews = data;
      // print("更新新闻");
      update();
    }
  }

  getHomePosts() async {
    // Get.dialog(
    //   Center(
    //     child: CircularProgressIndicator(),
    //   ),
    // );
    isLoading = true;
    var data = await DeepinAppApi.getPosts(queryString);
    if (data != null) {
      isLoading = false;
      // Get.back();
      pageListData = data;
      // print("帖子列表");
      update();
    }
  }

  @override
  void onClose() {}
}
