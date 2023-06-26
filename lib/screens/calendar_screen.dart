import 'package:calendar/models/date_time_extension.dart';
import 'package:calendar/widgets/calendar.dart';
import 'package:calendar/widgets/header.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({
    super.key,
  });

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late DateTime selectedMonth;
  DateTime? selectedDate;
  @override
  void initState() {
    selectedMonth = DateTime.now().monthStart;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 15,
          right: 20,
        ),
        child: Column(
          children: [
            HeaderOfCalendar(
              selectedMonth: selectedMonth,
              onChange: (value) => setState(() {
                selectedMonth = value;
              }),
            ),
            Calendar(
              selectedDate: selectedDate,
              selectedMonth: selectedMonth,
              selectDate: (DateTime value) => setState(() {
                selectedDate = value;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
