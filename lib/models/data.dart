import 'group_forum.dart';
import 'quote_post.dart';
import 'quote_user.dart';
import 'son_post.dart';
import 'thread.dart';
import 'user.dart';

class Data {
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
  int? isLogin;
  bool? isUp;
  int? isTopForum;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  User? user;
  QuoteUser? quoteUser;
  QuotePost? quotePost;
  Thread? thread;
  SonPost? sonPost;
  List<dynamic>? postComment;
  GroupForum? groupForum;
  int? total;
  int? storey;

  Data({
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
    this.isLogin,
    this.isUp,
    this.isTopForum,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.user,
    this.quoteUser,
    this.quotePost,
    this.thread,
    this.sonPost,
    this.postComment,
    this.groupForum,
    this.total,
    this.storey,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
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
      isLogin: json['is_login'] as int?,
      isUp: json['is_up'] as bool?,
      isTopForum: json['is_top_forum'] as int?,
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
      quotePost: json['quote_post'] == null
          ? null
          : QuotePost.fromJson(json['quote_post'] as Map<String, dynamic>),
      thread: json['thread'] == null
          ? null
          : Thread.fromJson(json['thread'] as Map<String, dynamic>),
      sonPost: json['son_post'] == null
          ? null
          : SonPost.fromJson(json['son_post'] as Map<String, dynamic>),
      postComment: json['post_comment'] as List<dynamic>?,
      groupForum: json['group_forum'] == null
          ? null
          : GroupForum.fromJson(json['group_forum'] as Map<String, dynamic>),
      total: json['total'] as int?,
      storey: json['storey'] as int?,
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
      'is_login': isLogin,
      'is_up': isUp,
      'is_top_forum': isTopForum,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt,
      'user': user?.toJson(),
      'quote_user': quoteUser?.toJson(),
      'quote_post': quotePost?.toJson(),
      'thread': thread?.toJson(),
      'son_post': sonPost?.toJson(),
      'post_comment': postComment,
      'group_forum': groupForum?.toJson(),
      'total': total,
      'storey': storey,
    };
  }
}
