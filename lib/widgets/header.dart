import 'package:calendar/models/date_time_extension.dart';
import 'package:flutter/material.dart';

class HeaderOfCalendar extends StatelessWidget {
  final DateTime selectedMonth;
  final ValueChanged<DateTime> onChange;
  const HeaderOfCalendar(
      {super.key, required this.onChange, required this.selectedMonth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text('${selectedMonth.year} / ${selectedMonth.month}'),
        ),
        IconButton(
          onPressed: () {
            onChange(selectedMonth.addMonth(-1));
          },
          icon: const Icon(Icons.arrow_left_sharp),
        ),
        IconButton(
          onPressed: () {
            onChange(selectedMonth.addMonth(1));
          },
          icon: const Icon(Icons.arrow_right_sharp),
        ),
      ],
    );
  }
}
