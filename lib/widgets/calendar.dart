import 'package:calendar/models/date_time_extension.dart';
import 'package:calendar/widgets/row_item.dart';
import 'package:flutter/material.dart';

import '../models/calendar_month.dart';

class Calendar extends StatelessWidget {
  final DateTime selectedMonth;
  final DateTime? selectedDate;
  final ValueChanged<DateTime> selectDate;
  const Calendar(
      {super.key,
      required this.selectedDate,
      required this.selectedMonth,
      required this.selectDate});

  @override
  Widget build(BuildContext context) {
    var data =
        CalendarMonth(year: selectedMonth.year, month: selectedMonth.month);
    return SizedBox(
        height: 200,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('M'),
                Text('T'),
                Text('W'),
                Text('T'),
                Text('F'),
                Text('S'),
                Text('S'),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 1,
                  color: Colors.black,
                ),
                for (var week in data.weeks)
                  Row(
                    children: [
                      ...week.map(
                        (e) => Expanded(
                          child: RowItem(
                            date: e.date,
                            isActiveMonth: e.isActiveMonth,
                            isSelected: selectedDate != null &&
                                selectedDate!.sameDate(e.date),
                            onTap: () => selectDate(e.date),
                          ),
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ],
        ));
  }
}
