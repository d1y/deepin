String humanDateTime(DateTime? now) {
  if (now == null) return "";
  String convertedDateTime =
      "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString()}-${now.minute.toString()}";
  return convertedDateTime;
}
