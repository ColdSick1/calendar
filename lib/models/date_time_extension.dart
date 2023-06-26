extension DateTimeExt on DateTime {
  DateTime get monthStart {
    return DateTime(year, month);
  }

  DateTime get dayStart {
    return DateTime(year, month, day);
  }

  DateTime addMonth(int count) {
    return DateTime(year, month + count, day);
  }

  bool sameDate(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }

  bool get isToday {
    return sameDate(
      DateTime.now(),
    );
  }

  List<DateTime> daysRange(DateTime dayOne, DateTime dayTwo) {
    List<DateTime> list = [];

    list.addAll(
      [dayOne, dayTwo],
    );
    return list;
  }

  DateTime get dayBefore {
    return DateTime(year, month, day);
  }
}
