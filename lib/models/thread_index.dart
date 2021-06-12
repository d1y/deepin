import 'forum.dart';
import 'group_forum.dart';
import 'type.dart';
import 'user.dart';

class ThreadIndex {
  int? id;
  int? forumId;
  int? top;
  int? userId;
  String? userip;
  String? subject;
  String? message;
  String? messageFmt;
  DateTime? lastDate;
  int? viewsCnt;
  int? postsCnt;
  int? modsCnt;
  int? isclosed;
  int? lastUserId;
  String? lastUsername;
  int? lastPostId;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? favouriteCnt;
  int? state;
  int? typeId;
  Type? type;
  User? user;
  dynamic post;
  Forum? forum;
  GroupForum? groupForum;
  int? isDigest;
  int? isDigestForum;
  int? isTopForum;
  int? hotValue;
  String? lastDateDesc;
  String? createdAtDesc;
  String? updatedAtDesc;
  int? isPoll;

  ThreadIndex({
    this.id,
    this.forumId,
    this.top,
    this.userId,
    this.userip,
    this.subject,
    this.message,
    this.messageFmt,
    this.lastDate,
    this.viewsCnt,
    this.postsCnt,
    this.modsCnt,
    this.isclosed,
    this.lastUserId,
    this.lastUsername,
    this.lastPostId,
    this.createdAt,
    this.updatedAt,
    this.favouriteCnt,
    this.state,
    this.typeId,
    this.type,
    this.user,
    this.post,
    this.forum,
    this.groupForum,
    this.isDigest,
    this.isDigestForum,
    this.isTopForum,
    this.hotValue,
    this.lastDateDesc,
    this.createdAtDesc,
    this.updatedAtDesc,
    this.isPoll,
  });

  factory ThreadIndex.fromJson(Map<String, dynamic> json) {
    return ThreadIndex(
      id: json['id'] as int?,
      forumId: json['forum_id'] as int?,
      top: json['top'] as int?,
      userId: json['user_id'] as int?,
      userip: json['userip'] as String?,
      subject: json['subject'] as String?,
      message: json['message'] as String?,
      messageFmt: json['message_fmt'] as String?,
      lastDate: json['last_date'] == null
          ? null
          : DateTime.parse(json['last_date'] as String),
      viewsCnt: json['views_cnt'] as int?,
      postsCnt: json['posts_cnt'] as int?,
      modsCnt: json['mods_cnt'] as int?,
      isclosed: json['isclosed'] as int?,
      lastUserId: json['last_user_id'] as int?,
      lastUsername: json['last_username'] as String?,
      lastPostId: json['last_post_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      favouriteCnt: json['favourite_cnt'] as int?,
      state: json['state'] as int?,
      typeId: json['type_id'] as int?,
      type: json['type'] == null
          ? null
          : Type.fromJson(json['type'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      post: json['post'],
      forum: json['forum'] == null
          ? null
          : Forum.fromJson(json['forum'] as Map<String, dynamic>),
      groupForum: json['group_forum'] == null
          ? null
          : GroupForum.fromJson(json['group_forum'] as Map<String, dynamic>),
      isDigest: json['is_digest'] as int?,
      isDigestForum: json['is_digest_forum'] as int?,
      isTopForum: json['is_top_forum'] as int?,
      hotValue: json['hot_value'] as int?,
      lastDateDesc: json['last_date_desc'] as String?,
      createdAtDesc: json['created_at_desc'] as String?,
      updatedAtDesc: json['updated_at_desc'] as String?,
      isPoll: json['is_poll'] as int?,
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
      'message': message,
      'message_fmt': messageFmt,
      'last_date': lastDate?.toIso8601String(),
      'views_cnt': viewsCnt,
      'posts_cnt': postsCnt,
      'mods_cnt': modsCnt,
      'isclosed': isclosed,
      'last_user_id': lastUserId,
      'last_username': lastUsername,
      'last_post_id': lastPostId,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'favourite_cnt': favouriteCnt,
      'state': state,
      'type_id': typeId,
      'type': type?.toJson(),
      'user': user?.toJson(),
      'post': post,
      'forum': forum?.toJson(),
      'group_forum': groupForum?.toJson(),
      'is_digest': isDigest,
      'is_digest_forum': isDigestForum,
      'is_top_forum': isTopForum,
      'hot_value': hotValue,
      'last_date_desc': lastDateDesc,
      'created_at_desc': createdAtDesc,
      'updated_at_desc': updatedAtDesc,
      'is_poll': isPoll,
    };
  }
}
