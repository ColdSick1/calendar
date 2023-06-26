import 'package:calendar/models/date_time_extension.dart';
import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final onTap;
  final bool isSelected;
  final bool isActiveMonth;
  final DateTime date;
  const RowItem(
      {super.key,
      required this.onTap,
      required this.date,
      required this.isActiveMonth,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final number = date.day;

    final bool isPassed = date.isBefore(
      DateTime.now().dayBefore,
    );
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 25,
          width: 25,
          decoration: isSelected
              ? const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                )
              : null,
          child: Center(
            child: Text(
              number.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isPassed
                    ? isActiveMonth
                        ? Colors.grey
                        : Colors.transparent
                    : isActiveMonth
                        ? Colors.black
                        : Colors.grey[300],
              ),
            ),
          ),
        ));
  }
}
