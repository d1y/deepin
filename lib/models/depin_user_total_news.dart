class DepinUserTotalNews {
  String nickname;
  int userTotal;

  DepinUserTotalNews({required this.nickname, required this.userTotal});

  factory DepinUserTotalNews.fromJson(Map<String, dynamic> json) {
    return DepinUserTotalNews(
      nickname: json['nickname'] as String,
      userTotal: json['user_total'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nickname': nickname,
      'user_total': userTotal,
    };
  }
}
