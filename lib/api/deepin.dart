import 'package:deepin/models/deepin_banner_json_data.dart';
import 'package:deepin/models/deepin_posts_comments.dart';
import 'package:deepin/models/deepin_posts_data.dart';
import 'package:deepin/models/deepin_posts_detail.dart';
import 'package:deepin/models/depin_user_total_news.dart';
import 'package:deepin/utils/http.dart';
import 'package:deepin/utils/pageutils.dart';
import 'package:deepin/utils/qs.dart';

class DeepinAppApi {
  /// 获取首页`banner`
  static Future<List<DeepinBannerJsonData>> getHomeBanner() async {
    try {
      var resp = await dio.get('/banner/list');
      List<dynamic> _data = resp.data;
      var wrap = _data.map((e) => DeepinBannerJsonData.fromJson(e)).toList();
      return wrap;
    } catch (e) {
      return [];
    }
  }

  /// 获取用户总数和新用户
  static Future<DepinUserTotalNews?> getUserTotalNews() async {
    try {
      var resp = await dio.get("/user/reg/total");
      return DepinUserTotalNews.fromJson(resp.data);
    } catch (e) {
      return null;
    }
  }

  /// 获取帖子
  static Future<PageUtils?> getPosts(SplitPostsQueryString? qs) async {
    try {
      if (qs == null) qs = new SplitPostsQueryString();
      var q = qs.toData();
      var resp = await dio.get("/thread/index", queryParameters: q);
      var result = DeepinPostsData.fromJson(resp.data);
      return PageUtils.scanHome(result);
    } catch (e) {}
  }

  /// 获取帖子详情
  static Future<DeepinPostsDetail?> getPostsDetail(int id) async {
    try {
      var resp = await dio.get("/thread/info", queryParameters: {
        "id": id,
      });
      var jsondata = resp.data;
      var jsonDy = new Map<String, dynamic>.from(jsondata);
      var detailDy = new Map<String, dynamic>.from(jsonDy['data']);
      var result = DeepinPostsDetail.fromJson(detailDy);
      return result;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  /// 获取帖子评论
  static Future<DeepinPostsComments?> getPostsComments(
      int id, int limit, int page) async {
    try {
      var resp = await dio.get("/thread/post/list", queryParameters: {
        "id": id,
        "limit": limit,
        "offset": page,
      });
      var result = DeepinPostsComments.fromJson(resp.data);
      return result;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
