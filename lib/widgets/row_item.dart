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
    // final isToday = date.isToday;
    final bool isPassed = date.isBefore(
      DateTime.now(),
    );
    return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: isSelected
              ? const BoxDecoration(color: Colors.blue, shape: BoxShape.circle)
              : null,
          child: Text(
            number.toString(),
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
        ));
  }
}
