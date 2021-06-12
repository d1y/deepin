import 'package:deepin/models/deepin_posts_data.dart';
import 'package:deepin/models/thread_index.dart';

class PageUtils {
  DeepinPostsData data;

  /// 是否还有下一页
  bool get isNext {
    return totalPage! > currentPage!;
  }

  /// 是否有上一页
  bool get isPrev {
    return 0 < currentPage!;
  }

  /// 总页数
  int? get totalPage {
    var f = data.totalCount;
    return (f! / limit!).ceil();
  }

  /// 当前页数
  int? get currentPage {
    return data.totalOffset;
  }

  /// 每页的大小
  int? get limit {
    return data.totalLimit;
  }

  /// 帖子列表
  List<ThreadIndex>? get listData {
    return data.threadIndex;
  }

  /// 判空
  bool get checkNull {
    return data == null;
  }

  /// 获取帖子标题
  String? getPostTitle(int index) {
    var item = data.threadIndex?[index];
    var t = item?.subject;
    var prefix = item?.type?.name;
    return '【$prefix】$t';
  }

  /// 帖子是否置顶
  bool getPostIsTop(int index) {
    var item = data.threadIndex?[index];
    if (item == null) return false;
    return item.top == 1 ? true : false;
  }

  /// 帖子是否是精华帖
  bool getPostIsJinghua(int index) {
    var item = data.threadIndex?[index];
    if (item == null) return false;
    return item.isDigest == 1 ? true : false;
  }

  /// 标签的标题
  String? getPostTagTitle(int index) {
    return data.threadIndex?[index].forum?.name;
  }

  /// 获取用户的花名
  String? getPostNickName(int index) {
    return data.threadIndex?[index].user?.nickname;
  }

  /// 获取帖子创建时间
  String? getPostCreateTimeString(int index) {
    return data.threadIndex?[index].createdAtDesc;
  }

  /// 获取帖子的最后回复时间
  String? getPostLastUpdateTimeString(int index) {
    var item = data.threadIndex?[index].lastDateDesc;
    return '最新回复${item}';
  }

  /// 获取pv
  String getPostCatEyeCount(int index) {
    var item = data.threadIndex?[index];
    if (item == null) return "0";
    return '${item.viewsCnt}';
  }

  /// 获取评论数
  String getPostCatSayCount(int index) {
    var item = data.threadIndex?[index];
    if (item == null) return "0";
    return '${item.postsCnt}';
  }

  /// 下一页
  // handleNextPage() {
  //   _limit++;
  // }

  /// 上一页
  // handlePrevPage() {
  //   _limit--;
  // }

  PageUtils.scanHome(this.data) {}
}
