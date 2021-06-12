class Levels {
  int? id;
  String? levelName;
  int? colorId;
  String? levelIcon;
  String? admin;
  int? min;
  int? max;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;

  Levels({
    this.id,
    this.levelName,
    this.colorId,
    this.levelIcon,
    this.admin,
    this.min,
    this.max,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory Levels.fromJson(Map<String, dynamic> json) {
    return Levels(
      id: json['id'] as int?,
      levelName: json['level_name'] as String?,
      colorId: json['color_id'] as int?,
      levelIcon: json['level_icon'] as String?,
      admin: json['admin'] as String?,
      min: json['min'] as int?,
      max: json['max'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'level_name': levelName,
      'color_id': colorId,
      'level_icon': levelIcon,
      'admin': admin,
      'min': min,
      'max': max,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
    };
  }
}
