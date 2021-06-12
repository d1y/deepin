import 'package:cached_network_image/cached_network_image.dart';
import 'package:deepin/config/assets.dart';
import 'package:deepin/config/const.dart';
import 'package:deepin/widget/B64Image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PreviewModule {
  /// 预览图片
  PreviewModule.image(String imageURL) {
    var flag = hasCodeIsBase64Code(imageURL);
    Get.dialog(
      GestureDetector(
        onTap: () => Get.back(),
        child: Center(
          child: flag
              ? imageFromDeepinBase64String(imageURL)
              : CachedNetworkImage(
                  color: Colors.black12,
                  colorBlendMode: BlendMode.dstOver,
                  fit: BoxFit.fitWidth,
                  imageUrl: imageURL,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(
                      value: downloadProgress.progress,
                    ),
                  ),
                  errorWidget: (context, url, error) => Center(
                    child: Icon(
                      Icons.error,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String? nickname;

  final String? avatar;

  final String? subTitle;

  UserAvatar({
    required this.nickname,
    required this.avatar,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipOval(
            child: CachedNetworkImage(
              color: Colors.black12,
              colorBlendMode: BlendMode.dstOver,
              fit: BoxFit.cover,
              imageUrl: avatar ?? "",
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(
                      DeepinConstConfig.HOME_BANNER_BORDER_RADIUS_SIZE)),
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
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                child: CircularProgressIndicator(
                  value: downloadProgress.progress,
                ),
              ),
              errorWidget: (context, url, error) => Center(
                child: Icon(
                  Icons.error,
                ),
              ),
            ),
          ),
          SizedBox.fromSize(size: Size(12, 12)),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nickname ?? "",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12 * 1.2,
                  ),
                ),
                Text(
                  subTitle ?? "",
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DeepinSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE,
          DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE),
    );
  }
}

class DeepinUserNewsInfo extends StatelessWidget {
  final String? nickname;

  final int? userTotal;

  DeepinUserNewsInfo({required this.nickname, required this.userTotal});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.string(DeepinIcons.USER_TOTAL_NEWS),
        SizedBox.fromSize(
          size: Size(DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE,
              DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE),
        ),
        Text(
          '会员总数: $userTotal',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox.fromSize(
          size: Size(DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE,
              DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE),
        ),
        Text("|"),
        SizedBox.fromSize(
          size: Size(DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE,
              DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE),
        ),
        Text(
          '欢迎新会员 $nickname',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class PostCatCommentInfo extends StatelessWidget {
  /// 今天
  final int? today_posts_cnt;

  /// 昨天
  final int? yesterday_posts_cnt;

  /// 总帖子数
  final int? total_posts_cnt;

  PostCatCommentInfo({
    required this.today_posts_cnt,
    required this.yesterday_posts_cnt,
    required this.total_posts_cnt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '今日帖：',
                ),
                TextSpan(
                  text: today_posts_cnt.toString(),
                  style: TextStyle(
                    color: Get.theme.accentColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox.fromSize(
            size: Size(
              DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE,
              DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE,
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '昨日贴：',
                ),
                TextSpan(
                  text: yesterday_posts_cnt.toString(),
                  style: TextStyle(
                    color: Get.theme.accentColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox.fromSize(
            size: Size(
              DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE,
              DeepinConstConfig.HOME_DEFAULT_TEXT_PADDING_SIZE,
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '总贴数：',
                ),
                TextSpan(
                  text: total_posts_cnt.toString(),
                  style: TextStyle(
                    color: Get.theme.accentColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
