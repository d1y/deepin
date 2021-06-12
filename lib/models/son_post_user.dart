import 'levels.dart';

class User {
  int? id;
  int? accountId;
  int? groupId;
  String? openid;
  String? unionId;
  String? groupName;
  String? email;
  int? emailChecked;
  String? username;
  String? realname;
  String? nickname;
  String? mobile;
  String? qq;
  int? threadsCnt;
  int? postsCnt;
  int? msgCnt;
  int? creditsNum;
  String? createIp;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? loginIp;
  String? desc;
  DateTime? loginDate;
  int? loginsCnt;
  String? avatar;
  int? digestsNum;
  int? state;
  int? favouriteCnt;
  int? likeCnt;
  int? level;
  Levels? levels;

  User({
    this.id,
    this.accountId,
    this.groupId,
    this.openid,
    this.unionId,
    this.groupName,
    this.email,
    this.emailChecked,
    this.username,
    this.realname,
    this.nickname,
    this.mobile,
    this.qq,
    this.threadsCnt,
    this.postsCnt,
    this.msgCnt,
    this.creditsNum,
    this.createIp,
    this.createdAt,
    this.updatedAt,
    this.loginIp,
    this.desc,
    this.loginDate,
    this.loginsCnt,
    this.avatar,
    this.digestsNum,
    this.state,
    this.favouriteCnt,
    this.likeCnt,
    this.level,
    this.levels,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int?,
      accountId: json['account_id'] as int?,
      groupId: json['group_id'] as int?,
      openid: json['openid'] as String?,
      unionId: json['union_id'] as String?,
      groupName: json['group_name'] as String?,
      email: json['email'] as String?,
      emailChecked: json['email_checked'] as int?,
      username: json['username'] as String?,
      realname: json['realname'] as String?,
      nickname: json['nickname'] as String?,
      mobile: json['mobile'] as String?,
      qq: json['qq'] as String?,
      threadsCnt: json['threads_cnt'] as int?,
      postsCnt: json['posts_cnt'] as int?,
      msgCnt: json['msg_cnt'] as int?,
      creditsNum: json['credits_num'] as int?,
      createIp: json['create_ip'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      loginIp: json['login_ip'] as String?,
      desc: json['desc'] as String?,
      loginDate: json['login_date'] == null
          ? null
          : DateTime.parse(json['login_date'] as String),
      loginsCnt: json['logins_cnt'] as int?,
      avatar: json['avatar'] as String?,
      digestsNum: json['digests_num'] as int?,
      state: json['state'] as int?,
      favouriteCnt: json['favourite_cnt'] as int?,
      likeCnt: json['like_cnt'] as int?,
      level: json['level'] as int?,
      levels: json['levels'] == null
          ? null
          : Levels.fromJson(json['levels'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'account_id': accountId,
      'group_id': groupId,
      'openid': openid,
      'union_id': unionId,
      'group_name': groupName,
      'email': email,
      'email_checked': emailChecked,
      'username': username,
      'realname': realname,
      'nickname': nickname,
      'mobile': mobile,
      'qq': qq,
      'threads_cnt': threadsCnt,
      'posts_cnt': postsCnt,
      'msg_cnt': msgCnt,
      'credits_num': creditsNum,
      'create_ip': createIp,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'login_ip': loginIp,
      'desc': desc,
      'login_date': loginDate?.toIso8601String(),
      'logins_cnt': loginsCnt,
      'avatar': avatar,
      'digests_num': digestsNum,
      'state': state,
      'favourite_cnt': favouriteCnt,
      'like_cnt': likeCnt,
      'level': level,
      'levels': levels?.toJson(),
    };
  }
}
