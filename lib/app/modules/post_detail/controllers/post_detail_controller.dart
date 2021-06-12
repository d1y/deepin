import 'package:deepin/api/deepin.dart';
import 'package:deepin/models/deepin_posts_comments.dart';
import 'package:deepin/models/deepin_posts_detail.dart';
import 'package:get/get.dart';

class PostDetailController extends GetxController {
  DeepinPostsDetail? postsDetail;

  DeepinPostsComments? postComments;

  int? postID;

  getPageDetailID() {
    postID = Get.arguments["postID"];
    update();
  }

  getPostsDetail() async {
    var data = await DeepinAppApi.getPostsDetail(postID!);
    postsDetail = data;
    update();
  }

  getPostsComments() async {
    var data = await DeepinAppApi.getPostsComments(postID!, 20, 0);
    postComments = data;
    update();
  }

  @override
  void onInit() async {
    super.onInit();
    getPageDetailID();
    await getPostsDetail();
    await getPostsComments();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
