class Forum {
  int? id;
  String? name;
  int? rank;
  int? threadsCnt;
  int? postsCnt;
  int? visitCnt;
  int? todayPostsCnt;
  int? todayThreadsCnt;
  int? todayVisitCnt;
  String? brief;
  String? announcement;
  int? orderby;
  String? ownerUids;
  int? digestsCnt;
  String? icon;
  String? createdAt;
  String? updatedAt;
  int? typeId;
  String? linkUrl;

  Forum({
    this.id,
    this.name,
    this.rank,
    this.threadsCnt,
    this.postsCnt,
    this.visitCnt,
    this.todayPostsCnt,
    this.todayThreadsCnt,
    this.todayVisitCnt,
    this.brief,
    this.announcement,
    this.orderby,
    this.ownerUids,
    this.digestsCnt,
    this.icon,
    this.createdAt,
    this.updatedAt,
    this.typeId,
    this.linkUrl,
  });

  factory Forum.fromJson(Map<String, dynamic> json) {
    return Forum(
      id: json['id'] as int?,
      name: json['name'] as String?,
      rank: json['rank'] as int?,
      threadsCnt: json['threads_cnt'] as int?,
      postsCnt: json['posts_cnt'] as int?,
      visitCnt: json['visit_cnt'] as int?,
      todayPostsCnt: json['today_posts_cnt'] as int?,
      todayThreadsCnt: json['today_threads_cnt'] as int?,
      todayVisitCnt: json['today_visit_cnt'] as int?,
      brief: json['brief'] as String?,
      announcement: json['announcement'] as String?,
      orderby: json['orderby'] as int?,
      ownerUids: json['owner_uids'] as String?,
      digestsCnt: json['digests_cnt'] as int?,
      icon: json['icon'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      typeId: json['type_id'] as int?,
      linkUrl: json['link_url'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'rank': rank,
      'threads_cnt': threadsCnt,
      'posts_cnt': postsCnt,
      'visit_cnt': visitCnt,
      'today_posts_cnt': todayPostsCnt,
      'today_threads_cnt': todayThreadsCnt,
      'today_visit_cnt': todayVisitCnt,
      'brief': brief,
      'announcement': announcement,
      'orderby': orderby,
      'owner_uids': ownerUids,
      'digests_cnt': digestsCnt,
      'icon': icon,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'type_id': typeId,
      'link_url': linkUrl,
    };
  }
}
