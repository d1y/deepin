import 'group_forum.dart';
import 'quote_user.dart';
import 'son_post_user.dart';
import 'thread.dart';

class SonPost {
  int? id;
  int? threadId;
  int? forumId;
  int? postUserId;
  int? isfirst;
  String? userip;
  int? imagesNum;
  int? filesNum;
  int? doctype;
  int? quotePostId;
  int? quoteUserId;
  String? message;
  String? messageFmt;
  int? checked;
  int? likeCnt;
  int? hasRead;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  User? user;
  QuoteUser? quoteUser;
  Thread? thread;
  GroupForum? groupForum;

  SonPost({
    this.id,
    this.threadId,
    this.forumId,
    this.postUserId,
    this.isfirst,
    this.userip,
    this.imagesNum,
    this.filesNum,
    this.doctype,
    this.quotePostId,
    this.quoteUserId,
    this.message,
    this.messageFmt,
    this.checked,
    this.likeCnt,
    this.hasRead,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.user,
    this.quoteUser,
    this.thread,
    this.groupForum,
  });

  factory SonPost.fromJson(Map<String, dynamic> json) {
    return SonPost(
      id: json['id'] as int?,
      threadId: json['thread_id'] as int?,
      forumId: json['forum_id'] as int?,
      postUserId: json['post_user_id'] as int?,
      isfirst: json['isfirst'] as int?,
      userip: json['userip'] as String?,
      imagesNum: json['images_num'] as int?,
      filesNum: json['files_num'] as int?,
      doctype: json['doctype'] as int?,
      quotePostId: json['quote_post_id'] as int?,
      quoteUserId: json['quote_user_id'] as int?,
      message: json['message'] as String?,
      messageFmt: json['message_fmt'] as String?,
      checked: json['checked'] as int?,
      likeCnt: json['like_cnt'] as int?,
      hasRead: json['has_read'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'],
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      quoteUser: json['quote_user'] == null
          ? null
          : QuoteUser.fromJson(json['quote_user'] as Map<String, dynamic>),
      thread: json['thread'] == null
          ? null
          : Thread.fromJson(json['thread'] as Map<String, dynamic>),
      groupForum: json['group_forum'] == null
          ? null
          : GroupForum.fromJson(json['group_forum'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'thread_id': threadId,
      'forum_id': forumId,
      'post_user_id': postUserId,
      'isfirst': isfirst,
      'userip': userip,
      'images_num': imagesNum,
      'files_num': filesNum,
      'doctype': doctype,
      'quote_post_id': quotePostId,
      'quote_user_id': quoteUserId,
      'message': message,
      'message_fmt': messageFmt,
      'checked': checked,
      'like_cnt': likeCnt,
      'has_read': hasRead,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt,
      'user': user?.toJson(),
      'quote_user': quoteUser?.toJson(),
      'thread': thread?.toJson(),
      'group_forum': groupForum?.toJson(),
    };
  }
}
