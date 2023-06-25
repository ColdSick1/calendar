import 'package:calendar/widgets/calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/calendar_cubit.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = CalendarCubit();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Календарь'),
      ),
      body: BlocBuilder<CalendarCubit, CalendarState>(
        bloc: cubit,
        builder: (context, state) {
          if (state is CalendarInitial) {
            return Column(
              children: [
                const Text('Календарь'),
                Calendar(
                    selectedDay: state.selectedDay,
                    selectedMonth: state.selectedMonth)
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
