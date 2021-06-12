import 'dart:ui';

import 'package:flutter/foundation.dart';

@immutable
class DeepinBannerJsonData {
  final int? id;
  final String? url;
  final String? img;
  final String? mobileImg;
  final String? remark;
  final int? rank;
  final int? uid;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const DeepinBannerJsonData({
    this.id,
    this.url,
    this.img,
    this.mobileImg,
    this.remark,
    this.rank,
    this.uid,
    this.createdAt,
    this.updatedAt,
  });

  @override
  String toString() {
    return 'DeepinBannerJsonData(id: $id, url: $url, img: $img, mobileImg: $mobileImg, remark: $remark, rank: $rank, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  factory DeepinBannerJsonData.fromJson(Map<String, dynamic> json) {
    return DeepinBannerJsonData(
      id: json['id'] as int?,
      url: json['url'] as String?,
      img: json['img'] as String?,
      mobileImg: json['mobile_img'] as String?,
      remark: json['remark'] as String?,
      rank: json['rank'] as int?,
      uid: json['uid'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'img': img,
      'mobile_img': mobileImg,
      'remark': remark,
      'rank': rank,
      'uid': uid,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }

  DeepinBannerJsonData copyWith({
    int? id,
    String? url,
    String? img,
    String? mobileImg,
    String? remark,
    int? rank,
    int? uid,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return DeepinBannerJsonData(
      id: id ?? this.id,
      url: url ?? this.url,
      img: img ?? this.img,
      mobileImg: mobileImg ?? this.mobileImg,
      remark: remark ?? this.remark,
      rank: rank ?? this.rank,
      uid: uid ?? this.uid,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeepinBannerJsonData &&
        other.id == id &&
        other.url == url &&
        other.img == img &&
        other.mobileImg == mobileImg &&
        other.remark == remark &&
        other.rank == rank &&
        other.uid == uid &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return hashValues(
      id,
      url,
      img,
      mobileImg,
      remark,
      rank,
      uid,
      createdAt,
      updatedAt,
    );
  }
}
