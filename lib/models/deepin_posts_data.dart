import 'thread_index.dart';

class DeepinPostsData {
  List<ThreadIndex>? threadIndex;
  int? code;
  int? loginUserCnt;
  String? msg;
  int? postsCnt;
  int? preThreadsCnt;
  int? threadsCnt;
  int? todayThreadsCnt;
  int? totalCount;
  int? totalLimit;
  int? totalOffset;

  DeepinPostsData({
    this.threadIndex,
    this.code,
    this.loginUserCnt,
    this.msg,
    this.postsCnt,
    this.preThreadsCnt,
    this.threadsCnt,
    this.todayThreadsCnt,
    this.totalCount,
    this.totalLimit,
    this.totalOffset,
  });

  factory DeepinPostsData.fromJson(Map<String, dynamic> json) {
    return DeepinPostsData(
      threadIndex: (json['ThreadIndex'] as List<dynamic>?)
          ?.map((e) => ThreadIndex.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
      loginUserCnt: json['login_user_cnt'] as int?,
      msg: json['msg'] as String?,
      postsCnt: json['posts_cnt'] as int?,
      preThreadsCnt: json['pre_threads_cnt'] as int?,
      threadsCnt: json['threads_cnt'] as int?,
      todayThreadsCnt: json['today_threads_cnt'] as int?,
      totalCount: json['total_count'] as int?,
      totalLimit: json['total_limit'] as int?,
      totalOffset: json['total_offset'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ThreadIndex': threadIndex?.map((e) => e.toJson()).toList(),
      'code': code,
      'login_user_cnt': loginUserCnt,
      'msg': msg,
      'posts_cnt': postsCnt,
      'pre_threads_cnt': preThreadsCnt,
      'threads_cnt': threadsCnt,
      'today_threads_cnt': todayThreadsCnt,
      'total_count': totalCount,
      'total_limit': totalLimit,
      'total_offset': totalOffset,
    };
  }
}
