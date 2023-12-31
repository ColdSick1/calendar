import 'package:calendar/models/date_time_extension.dart';
import 'package:flutter/material.dart';

import 'calendar_day.dart';

class CalendarMonth {
  final int year;
  final int month;

  int get daysInMonth => DateUtils.getDaysInMonth(year, month);

  int get weeksCount => ((daysInMonth + firstDayOffset) / 7).ceil();

  const CalendarMonth({
    required this.year,
    required this.month,
  });

  int get firstDayOffset => DateTime(year, month).weekday - 1;

  List<List<CalendarDay>> get weeks {
    final list = <List<CalendarDay>>[];
    var firstDayMonth = DateTime(year, month, 1);
    var firstDayOfWeek = firstDayMonth.subtract(Duration(days: firstDayOffset));

    for (var w = 0; w < weeksCount; w++) {
      final week = List<CalendarDay>.generate(
        7,
        (index) {
          final date = firstDayOfWeek.add(Duration(days: index));

          final isActiveMonth = date.year == year && date.month == month;

          return CalendarDay(
            date: date,
            isActiveMonth: isActiveMonth,
            isActiveDate: date.isToday,
          );
        },
      );
      list.add(week);
      firstDayOfWeek = firstDayOfWeek.add(const Duration(days: 7));
    }
    return list;
  }
}
