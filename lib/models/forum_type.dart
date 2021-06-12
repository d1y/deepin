class Type {
  int? id;
  int? type;
  String? name;
  String? nameEn;
  int? rank;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  int? isTj;

  Type({
    this.id,
    this.type,
    this.name,
    this.nameEn,
    this.rank,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.isTj,
  });

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
      id: json['id'] as int?,
      type: json['type'] as int?,
      name: json['name'] as String?,
      nameEn: json['name_en'] as String?,
      rank: json['rank'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      isTj: json['is_tj'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'name': name,
      'name_en': nameEn,
      'rank': rank,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
      'is_tj': isTj,
    };
  }
}
