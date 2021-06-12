import 'package:deepin/config/const.dart';
import 'package:deepin/utils/time.dart';
import 'package:deepin/widget/deepinWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:get/get.dart';

import '../controllers/post_detail_controller.dart';

class PostDetailView extends GetView<PostDetailController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostDetailController>(
      builder: (_) => Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text(_.postsDetail!.subject ?? ""),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Get.back(),
          ),
        ),
        body: _.postsDetail != null
            ? SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox.fromSize(size: Size(12, 12)),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 2.0, color: Colors.black12),
                        ),
                      ),
                      margin: EdgeInsets.only(
                        top: 12,
                      ),
                      padding: EdgeInsets.only(
                        bottom: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          UserAvatar(
                            avatar: _.postsDetail!.user!.avatar,
                            nickname: _.postsDetail!.user!.nickname,
                            subTitle: _.postsDetail!.createdAtDesc,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(12, 12)),
                    Card(
                      elevation: .8,
                      shadowColor: Get.theme.accentColor,
                      margin: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      child: Html(
                        data: _.postsDetail!.post!.message ?? "",
                        onImageTap: (src, _, __, ___) {
                          PreviewModule.image(src!);
                        },
                      ),
                    ),
                    Container(
                      child: Text("# 所有回复",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Get.theme.accentColor,
                            fontSize: DeepinConstConfig
                                    .HOME_DEFAULT_TEXT_PADDING_SIZE *
                                2.8,
                          )),
                    ),
                    Divider(),
                    ..._.postComments!.data!
                        .map(($) => Card(
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    UserAvatar(
                                      avatar: $.user!.avatar,
                                      nickname: $.user!.nickname,
                                      subTitle: humanDateTime($.createdAt),
                                    ),
                                    Html(
                                      data: $.message,
                                      onImageTap: (src, _, __, ___) {
                                        PreviewModule.image(src!);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
