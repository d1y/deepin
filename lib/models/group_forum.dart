import 'group.dart';

class GroupForum {
  int? id;
  int? userId;
  int? groupId;
  int? forumId;
  int? orderby;
  Group? group;

  GroupForum({
    this.id,
    this.userId,
    this.groupId,
    this.forumId,
    this.orderby,
    this.group,
  });

  factory GroupForum.fromJson(Map<String, dynamic> json) {
    return GroupForum(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      groupId: json['group_id'] as int?,
      forumId: json['forum_id'] as int?,
      orderby: json['orderby'] as int?,
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'group_id': groupId,
      'forum_id': forumId,
      'orderby': orderby,
      'group': group?.toJson(),
    };
  }
}
