class PollList {
  int? tid;
  int? overt;
  int? multiple;
  int? visible;
  int? pollDay;
  String? expiration;
  String? pollpreview;
  int? voters;
  int? votersNumber;
  int? maxchoices;
  dynamic forumPolloption;
  dynamic polloptionids;
  bool? pollExpire;

  PollList({
    this.tid,
    this.overt,
    this.multiple,
    this.visible,
    this.pollDay,
    this.expiration,
    this.pollpreview,
    this.voters,
    this.votersNumber,
    this.maxchoices,
    this.forumPolloption,
    this.polloptionids,
    this.pollExpire,
  });

  factory PollList.fromJson(Map<String, dynamic> json) {
    return PollList(
      tid: json['tid'] as int?,
      overt: json['overt'] as int?,
      multiple: json['multiple'] as int?,
      visible: json['visible'] as int?,
      pollDay: json['poll_day'] as int?,
      expiration: json['expiration'] as String?,
      pollpreview: json['pollpreview'] as String?,
      voters: json['voters'] as int?,
      votersNumber: json['voters_number'] as int?,
      maxchoices: json['maxchoices'] as int?,
      forumPolloption: json['forum_polloption'],
      polloptionids: json['polloptionids'],
      pollExpire: json['poll_expire'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tid': tid,
      'overt': overt,
      'multiple': multiple,
      'visible': visible,
      'poll_day': pollDay,
      'expiration': expiration,
      'pollpreview': pollpreview,
      'voters': voters,
      'voters_number': votersNumber,
      'maxchoices': maxchoices,
      'forum_polloption': forumPolloption,
      'polloptionids': polloptionids,
      'poll_expire': pollExpire,
    };
  }
}
