class Type {
  int? id;
  int? type;
  String? name;
  int? rank;
  String? createdAt;
  String? updatedAt;
  int? isTj;

  Type({
    this.id,
    this.type,
    this.name,
    this.rank,
    this.createdAt,
    this.updatedAt,
    this.isTj,
  });

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
      id: json['id'] as int?,
      type: json['type'] as int?,
      name: json['name'] as String?,
      rank: json['rank'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      isTj: json['is_tj'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'name': name,
      'rank': rank,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'is_tj': isTj,
    };
  }
}
