extension DateTimeExt on DateTime {
  DateTime get monthStart {
    return DateTime(year, month);
  }

  DateTime get dayStart {
    return DateTime(year, month, day);
  }

  DateTime addMonth(int count) {
    return DateTime(year, month, day + count);
  }

  bool sameDate(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }

  bool get isToday {
    return sameDate(
      DateTime.now(),
    );
  }
}
