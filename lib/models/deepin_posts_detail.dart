import 'forum.dart';
import 'poll_list.dart';
import 'post.dart';
import 'type.dart';
import 'user.dart';

class DeepinPostsDetail {
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
  int? imagesNum;
  int? filesNum;
  int? modsCnt;
  int? isclosed;
  int? firstPostId;
  int? lastUserId;
  String? lastUsername;
  int? lastPostId;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? favouriteCnt;
  int? checked;
  int? state;
  int? typeId;
  int? isDigest;
  int? isDigestForum;
  int? isTopForum;
  int? hotValue;
  bool? isFavorite;
  bool? isUp;
  int? likeCnt;
  Type? type;
  User? user;
  Post? post;
  String? lastDateDesc;
  String? createdAtDesc;
  String? updatedAtDesc;
  dynamic deletedAt;
  Forum? forum;
  PollList? pollList;
  int? isPoll;

  DeepinPostsDetail({
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
    this.imagesNum,
    this.filesNum,
    this.modsCnt,
    this.isclosed,
    this.firstPostId,
    this.lastUserId,
    this.lastUsername,
    this.lastPostId,
    this.createdAt,
    this.updatedAt,
    this.favouriteCnt,
    this.checked,
    this.state,
    this.typeId,
    this.isDigest,
    this.isDigestForum,
    this.isTopForum,
    this.hotValue,
    this.isFavorite,
    this.isUp,
    this.likeCnt,
    this.type,
    this.user,
    this.post,
    this.lastDateDesc,
    this.createdAtDesc,
    this.updatedAtDesc,
    this.deletedAt,
    this.forum,
    this.pollList,
    this.isPoll,
  });

  factory DeepinPostsDetail.fromJson(Map<String, dynamic> json) {
    return DeepinPostsDetail(
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
      imagesNum: json['images_num'] as int?,
      filesNum: json['files_num'] as int?,
      modsCnt: json['mods_cnt'] as int?,
      isclosed: json['isclosed'] as int?,
      firstPostId: json['first_post_id'] as int?,
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
      checked: json['checked'] as int?,
      state: json['state'] as int?,
      typeId: json['type_id'] as int?,
      isDigest: json['is_digest'] as int?,
      isDigestForum: json['is_digest_forum'] as int?,
      isTopForum: json['is_top_forum'] as int?,
      hotValue: json['hot_value'] as int?,
      isFavorite: json['is_favorite'] as bool?,
      isUp: json['is_up'] as bool?,
      likeCnt: json['like_cnt'] as int?,
      type: json['type'] == null
          ? null
          : Type.fromJson(json['type'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      lastDateDesc: json['last_date_desc'] as String?,
      createdAtDesc: json['created_at_desc'] as String?,
      updatedAtDesc: json['updated_at_desc'] as String?,
      deletedAt: json['deleted_at'],
      forum: json['forum'] == null
          ? null
          : Forum.fromJson(json['forum'] as Map<String, dynamic>),
      pollList: json['poll_list'] == null
          ? null
          : PollList.fromJson(json['poll_list'] as Map<String, dynamic>),
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
      'images_num': imagesNum,
      'files_num': filesNum,
      'mods_cnt': modsCnt,
      'isclosed': isclosed,
      'first_post_id': firstPostId,
      'last_user_id': lastUserId,
      'last_username': lastUsername,
      'last_post_id': lastPostId,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'favourite_cnt': favouriteCnt,
      'checked': checked,
      'state': state,
      'type_id': typeId,
      'is_digest': isDigest,
      'is_digest_forum': isDigestForum,
      'is_top_forum': isTopForum,
      'hot_value': hotValue,
      'is_favorite': isFavorite,
      'is_up': isUp,
      'like_cnt': likeCnt,
      'type': type?.toJson(),
      'user': user?.toJson(),
      'post': post?.toJson(),
      'last_date_desc': lastDateDesc,
      'created_at_desc': createdAtDesc,
      'updated_at_desc': updatedAtDesc,
      'deleted_at': deletedAt,
      'forum': forum?.toJson(),
      'poll_list': pollList?.toJson(),
      'is_poll': isPoll,
    };
  }
}
