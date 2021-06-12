class Levels {
  int? id;
  String? admin;
  int? colorId;
  String? levelIcon;
  String? levelName;
  int? min;
  int? max;
  String? createdAt;
  String? updatedAt;

  Levels({
    this.id,
    this.admin,
    this.colorId,
    this.levelIcon,
    this.levelName,
    this.min,
    this.max,
    this.createdAt,
    this.updatedAt,
  });

  factory Levels.fromJson(Map<String, dynamic> json) {
    return Levels(
      id: json['id'] as int?,
      admin: json['admin'] as String?,
      colorId: json['color_id'] as int?,
      levelIcon: json['level_icon'] as String?,
      levelName: json['level_name'] as String?,
      min: json['min'] as int?,
      max: json['max'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'admin': admin,
      'color_id': colorId,
      'level_icon': levelIcon,
      'level_name': levelName,
      'min': min,
      'max': max,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
