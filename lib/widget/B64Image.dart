import 'dart:convert';
import 'dart:typed_data';
import 'package:deepin/config/assets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

bool hasCodeIsBase64Code(String? b64) {
  if (b64 == null) return false;
  return b64.startsWith("data:image");
}

Widget imageFromDeepinBase64String(String base64String) {
  // return SvgPicture.string(DeepinIcons.ERROR);
  var idx = base64String.indexOf(",");
  if (idx <= -1) return SvgPicture.string(DeepinIcons.ERROR);
  var b64 = base64String.substring(idx + 1);
  return Image.memory(base64Decode(b64));
}

Image imageFromBase64String(String base64String) {
  return Image.memory(base64Decode(base64String));
}

Uint8List dataFromBase64String(String base64String) {
  return base64Decode(base64String);
}

String base64String(Uint8List data) {
  return base64Encode(data);
}
