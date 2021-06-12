import 'package:cached_network_image/cached_network_image.dart';
import 'package:deepin/app/routes/app_pages.dart';
import 'package:deepin/config/assets.dart';
import 'package:deepin/config/const.dart';
import 'package:deepin/config/enum.dart';
import 'package:deepin/widget/deepinWidget.dart';
import 'package:deepin/widget/postab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text(DeepinConstConfig.APPNAME),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ConstrainedBox(
                child: Swiper(
                    viewportFraction: 0.8,
                    scale: 0.9,
                    itemWidth: 300.0,
                    itemHeight: 200.0,
                    pagination: SwiperPagination(
                      margin: EdgeInsets.only(
                        top: 24,
                      ),
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.transparent,
                        child: SizedBox.expand(
                          child: CachedNetworkImage(
                            color: Colors.black12,
                            colorBlendMode: BlendMode.dstOver,
                            fit: BoxFit.cover,
                            imageUrl: _.bannerListData[index].mobileImg ?? "",
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    DeepinConstConfig
                                        .HOME_BANNER_BORDER_RADIUS_SIZE)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(5.0, 5.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) => Center(
                              child: CircularProgressIndicator(
                                  value: downloadProgress.progress),
                            ),
                            errorWidget: (context, url, error) => Center(
                              child: Icon(Icons.error),
                            ),
                          ),
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                          left: 8,
                          right: 8,
                        ),
                        foregroundDecoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                      );
                    },
                    itemCount: _.bannerListData.length),
                constraints: BoxConstraints.loose(
                  Size(
                    Get.width,
                    Get.height * .4,
                  ),
                ),
              ),
              DeepinSizedBox(),
              Container(
                padding: EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                  left: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      DeepinConstConfig.HOME_USER_TOTAL_NEWS_BORDER_RADIUS_SIZE,
                    ),
                  ),
                  color: Get.theme.accentColor,
                ),
                child: _.userTotalNews != null
                    ? DeepinUserNewsInfo(
                        userTotal: _.userTotalNews?.userTotal,
                        nickname: _.userTotalNews?.nickname,
                      )
                    : SizedBox.shrink(),
              ),
              DeepinSizedBox(),
              PostWhereTabWidget(
                where: _.qsWhere,
                onTap: (SearchPostsQueryStringWhere item) {
                  _.changeQueryStringWhere(item);
                },
              ),
              DeepinSizedBox(),
              _.pageListData != null
                  ? DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                      child: Row(
                        children: [
                          PostOrderTabWidget(
                            onTap: (SearchPostsQueryStringOrder item) {
                              _.changeQueryStringOrder(item);
                            },
                            order: _.qsOrder,
                          ),
                          PostCatCommentInfo(
                            today_posts_cnt:
                                _.pageListData!.data.todayThreadsCnt,
                            yesterday_posts_cnt:
                                _.pageListData!.data.preThreadsCnt,
                            total_posts_cnt: _.pageListData!.data.threadsCnt,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    )
                  : CircularProgressIndicator(),
              DeepinSizedBox(),
              Container(
                width: double.infinity,
                child: AnimationLimiter(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _.pageListData!.data.threadIndex!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 375),
                        child: SlideAnimation(
                          verticalOffset: 100.0,
                          child: FadeInAnimation(
                            child: Card(
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.POST_DETAIL, arguments: {
                                    "postID": _.pageListData!.data
                                        .threadIndex![index].id,
                                  });
                                },
                                child: Column(
                                  children: [
                                    DefaultTextStyle(
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: DeepinConstConfig
                                                        .HOME_DEFAULT_TEXT_PADDING_SIZE *
                                                    .5),
                                          ),
                                          _.pageListData!.getPostIsTop(index)
                                              ? SvgPicture.string(
                                                  DeepinIcons.POST_TOP)
                                              : SizedBox.shrink(),
                                          _.pageListData!
                                                  .getPostIsJinghua(index)
                                              ? SizedBox.fromSize(
                                                  size: Size(
                                                      DeepinConstConfig
                                                          .HOME_DEFAULT_TEXT_PADDING_SIZE,
                                                      DeepinConstConfig
                                                              .HOME_DEFAULT_TEXT_PADDING_SIZE *
                                                          .2),
                                                )
                                              : SizedBox.shrink(),
                                          _.pageListData!
                                                  .getPostIsJinghua(index)
                                              ? SvgPicture.string(
                                                  DeepinIcons.JINGHUA)
                                              : SizedBox.shrink(),
                                          Text(_.pageListData!
                                                  .getPostTitle(index) ??
                                              "")
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: DeepinConstConfig
                                                .HOME_DEFAULT_TEXT_PADDING_SIZE *
                                            1.2,
                                        bottom: DeepinConstConfig
                                                .HOME_DEFAULT_TEXT_PADDING_SIZE *
                                            1.2,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: DeepinConstConfig
                                                            .HOME_DEFAULT_TEXT_PADDING_SIZE *
                                                        .5),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 2,
                                                  bottom: 2,
                                                ),
                                                margin: EdgeInsets.only(
                                                  right: DeepinConstConfig
                                                          .HOME_DEFAULT_TEXT_PADDING_SIZE *
                                                      2,
                                                ),
                                                child: Text(
                                                  _.pageListData!
                                                          .getPostTagTitle(
                                                              index) ??
                                                      "",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(DeepinConstConfig
                                                              .HOME_BANNER_BORDER_RADIUS_SIZE *
                                                          .4),
                                                  color: Color.fromARGB(
                                                      1, 229, 243, 255),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.blue,
                                                        spreadRadius: 3),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: Get.width >= 1000
                                                    ? Get.width * (4 / 100)
                                                    : Get.width * (12 / 100),
                                                child: Text(
                                                  _.pageListData!
                                                          .getPostNickName(
                                                              index) ??
                                                      "",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              Container(
                                                width: Get.width >= 1000
                                                    ? Get.width * (6 / 100)
                                                    : Get.width * (14 / 100),
                                                child: Text(
                                                  _.pageListData!
                                                          .getPostCreateTimeString(
                                                              index) ??
                                                      "",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Text(
                                                _.pageListData!
                                                        .getPostLastUpdateTimeString(
                                                            index) ??
                                                    "",
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.string(
                                                  DeepinIcons.SEE1),
                                              SizedBox.fromSize(
                                                size: Size(
                                                    DeepinConstConfig
                                                        .HOME_DEFAULT_TEXT_PADDING_SIZE,
                                                    DeepinConstConfig
                                                            .HOME_DEFAULT_TEXT_PADDING_SIZE *
                                                        .2),
                                              ),
                                              Text(
                                                _.pageListData!
                                                    .getPostCatEyeCount(index),
                                              ),
                                              SizedBox.fromSize(
                                                size: Size(
                                                    DeepinConstConfig
                                                        .HOME_DEFAULT_TEXT_PADDING_SIZE,
                                                    DeepinConstConfig
                                                        .HOME_DEFAULT_TEXT_PADDING_SIZE),
                                              ),
                                              SvgPicture.string(
                                                  DeepinIcons.SAY),
                                              SizedBox.fromSize(
                                                size: Size(
                                                    DeepinConstConfig
                                                        .HOME_DEFAULT_TEXT_PADDING_SIZE,
                                                    DeepinConstConfig
                                                            .HOME_DEFAULT_TEXT_PADDING_SIZE *
                                                        .2),
                                              ),
                                              Text(
                                                _.pageListData!
                                                    .getPostCatSayCount(index),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        _.handleRefreshPost(PageNextAndPrev.prev);
                      },
                      icon: Icon(CupertinoIcons.arrow_left)),
                  IconButton(
                      onPressed: () {
                        _.handleRefreshPost(PageNextAndPrev.next);
                      },
                      icon: Icon(CupertinoIcons.arrow_right)),
                  Text("${_.humanCurrentPage}/${_.pageListData!.totalPage}"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
