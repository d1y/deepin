class Group {
  int? id;
  String? name;
  String? nameEn;
  int? pid;
  int? allowread;
  int? allowthread;
  int? allowpost;
  int? allowattach;
  int? allowdown;
  int? allowtop;
  int? allowupdate;
  int? allowdelete;
  int? allowmove;
  int? allowbanuser;
  int? allowdeleteuser;
  int? allowview;
  String? createdAt;
  String? updatedAt;

  Group({
    this.id,
    this.name,
    this.nameEn,
    this.pid,
    this.allowread,
    this.allowthread,
    this.allowpost,
    this.allowattach,
    this.allowdown,
    this.allowtop,
    this.allowupdate,
    this.allowdelete,
    this.allowmove,
    this.allowbanuser,
    this.allowdeleteuser,
    this.allowview,
    this.createdAt,
    this.updatedAt,
  });

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      id: json['id'] as int?,
      name: json['name'] as String?,
      nameEn: json['name_en'] as String?,
      pid: json['pid'] as int?,
      allowread: json['allowread'] as int?,
      allowthread: json['allowthread'] as int?,
      allowpost: json['allowpost'] as int?,
      allowattach: json['allowattach'] as int?,
      allowdown: json['allowdown'] as int?,
      allowtop: json['allowtop'] as int?,
      allowupdate: json['allowupdate'] as int?,
      allowdelete: json['allowdelete'] as int?,
      allowmove: json['allowmove'] as int?,
      allowbanuser: json['allowbanuser'] as int?,
      allowdeleteuser: json['allowdeleteuser'] as int?,
      allowview: json['allowview'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'name_en': nameEn,
      'pid': pid,
      'allowread': allowread,
      'allowthread': allowthread,
      'allowpost': allowpost,
      'allowattach': allowattach,
      'allowdown': allowdown,
      'allowtop': allowtop,
      'allowupdate': allowupdate,
      'allowdelete': allowdelete,
      'allowmove': allowmove,
      'allowbanuser': allowbanuser,
      'allowdeleteuser': allowdeleteuser,
      'allowview': allowview,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
