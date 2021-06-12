enum PageNextAndPrev {
  /// 下一页
  next,

  /// 上一页
  prev
}

/// 搜索帖子的查询条件
enum SearchPostsQueryStringWhere {
  /// 全部
  all,

  /// 热门
  hot_value,

  /// 精华
  is_digest,

  /// 推荐
  is_recommend,
}

String getEnumStringValue(t) {
  return t.toString().split('.').last;
}

extension ParseToDataByWhere on SearchPostsQueryStringWhere {
  /// 获取查询字段
  String get getQueryData {
    var i = this.index;
    if (i == 0) return "";
    var t = SearchPostsQueryStringWhere.values[i];
    return getEnumStringValue(t);
  }

  /// 获取文字
  String get getQueryHumanText {
    var i = this.index;
    switch (i) {
      case 0:
        return "全部";
      case 1:
        return "热门";
      case 2:
        return "精华";
      case 3:
        return "推荐";
    }
    return "";
  }
}

/// 搜索帖子的查询条件
enum SearchPostsQueryStringOrder {
  /// 最新发帖
  updated_at,

  /// 最多回复
  posts_cnt,

  /// 最新回复
  last_date
}

extension ParseToDataByOrder on SearchPostsQueryStringOrder {
  /// 获取查询字段
  String get getQueryData {
    var i = this.index;
    var t = SearchPostsQueryStringOrder.values[i];
    var c = t.toString().split('.').last;
    return getEnumStringValue(c);
  }

  /// 获取文字
  String get getQueryHumanText {
    var i = this.index;
    switch (i) {
      case 0:
        return "最新发帖";
      case 1:
        return "最多回复";
      case 2:
        return "最新回复";
    }
    return "";
  }
}
