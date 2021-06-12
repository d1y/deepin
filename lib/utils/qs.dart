import 'package:deepin/config/enum.dart';

class SplitPostsQueryString {
  SearchPostsQueryStringWhere where = SearchPostsQueryStringWhere.all;

  SearchPostsQueryStringOrder order = SearchPostsQueryStringOrder.updated_at;

  int limit = 20;

  int offset = 0;

  SplitQueryString() {}

  Map<String, dynamic> toData() {
    return {
      "where": where.getQueryData,
      "order": order.getQueryData,
      "limit": limit.toString(),
      "offset": offset.toString(),
    };
  }
}
