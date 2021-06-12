class Thread {
  int? id;
  int? forumId;
  int? top;
  int? userId;
  String? userip;
  String? subject;
  String? lastDate;
  int? viewsCnt;
  int? postsCnt;
  int? imageNum;
  int? filesNum;
  int? modsCnt;
  int? isclosed;
  int? firstPostId;
  int? lastUserId;
  String? lastNickname;
  int? lastPostId;
  String? createdAt;
  String? updatedAt;
  int? favouriteCnt;
  int? checked;
  int? state;
  int? likeCnt;
  int? isPoll;
  int? typeId;
  int? hotValue;
  String? lastDateDesc;
  String? createdAtDesc;
  String? updatedAtDesc;

  Thread({
    this.id,
    this.forumId,
    this.top,
    this.userId,
    this.userip,
    this.subject,
    this.lastDate,
    this.viewsCnt,
    this.postsCnt,
    this.imageNum,
    this.filesNum,
    this.modsCnt,
    this.isclosed,
    this.firstPostId,
    this.lastUserId,
    this.lastNickname,
    this.lastPostId,
    this.createdAt,
    this.updatedAt,
    this.favouriteCnt,
    this.checked,
    this.state,
    this.likeCnt,
    this.isPoll,
    this.typeId,
    this.hotValue,
    this.lastDateDesc,
    this.createdAtDesc,
    this.updatedAtDesc,
  });

  factory Thread.fromJson(Map<String, dynamic> json) {
    return Thread(
      id: json['id'] as int?,
      forumId: json['forum_id'] as int?,
      top: json['top'] as int?,
      userId: json['user_id'] as int?,
      userip: json['userip'] as String?,
      subject: json['subject'] as String?,
      lastDate: json['last_date'] as String?,
      viewsCnt: json['views_cnt'] as int?,
      postsCnt: json['posts_cnt'] as int?,
      imageNum: json['image_num'] as int?,
      filesNum: json['files_num'] as int?,
      modsCnt: json['mods_cnt'] as int?,
      isclosed: json['isclosed'] as int?,
      firstPostId: json['first_post_id'] as int?,
      lastUserId: json['last_user_id'] as int?,
      lastNickname: json['last_nickname'] as String?,
      lastPostId: json['last_post_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      favouriteCnt: json['favourite_cnt'] as int?,
      checked: json['checked'] as int?,
      state: json['state'] as int?,
      likeCnt: json['like_cnt'] as int?,
      isPoll: json['is_poll'] as int?,
      typeId: json['type_id'] as int?,
      hotValue: json['hot_value'] as int?,
      lastDateDesc: json['last_date_desc'] as String?,
      createdAtDesc: json['created_at_desc'] as String?,
      updatedAtDesc: json['updated_at_desc'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'forum_id': forumId,
      'top': top,
      'user_id': userId,
      'userip': userip,
      'subject': subject,
      'last_date': lastDate,
      'views_cnt': viewsCnt,
      'posts_cnt': postsCnt,
      'image_num': imageNum,
      'files_num': filesNum,
      'mods_cnt': modsCnt,
      'isclosed': isclosed,
      'first_post_id': firstPostId,
      'last_user_id': lastUserId,
      'last_nickname': lastNickname,
      'last_post_id': lastPostId,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'favourite_cnt': favouriteCnt,
      'checked': checked,
      'state': state,
      'like_cnt': likeCnt,
      'is_poll': isPoll,
      'type_id': typeId,
      'hot_value': hotValue,
      'last_date_desc': lastDateDesc,
      'created_at_desc': createdAtDesc,
      'updated_at_desc': updatedAtDesc,
    };
  }
}
