import 'data.dart';

class DeepinPostsComments {
  int? code;
  List<Data>? data;
  String? msg;
  int? totalCount;
  int? totalLimit;
  int? totalOffset;

  DeepinPostsComments({
    this.code,
    this.data,
    this.msg,
    this.totalCount,
    this.totalLimit,
    this.totalOffset,
  });

  factory DeepinPostsComments.fromJson(Map<String, dynamic> json) {
    return DeepinPostsComments(
      code: json['code'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
      totalCount: json['total_count'] as int?,
      totalLimit: json['total_limit'] as int?,
      totalOffset: json['total_offset'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'data': data?.map((e) => e.toJson()).toList(),
      'msg': msg,
      'total_count': totalCount,
      'total_limit': totalLimit,
      'total_offset': totalOffset,
    };
  }
}
