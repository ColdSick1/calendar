import 'package:bloc/bloc.dart';
import 'package:calendar/models/date_time_extension.dart';
import 'package:meta/meta.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalendarInitial(selectedMonth: DateTime.now()));
  initCalendar() {
    final selectedMonth = DateTime.now().monthStart;
    emit(CalendarInitial(selectedMonth: selectedMonth));
  }
}

@immutable
abstract class CalendarState {}

class CalendarInitial extends CalendarState {
  final DateTime selectedMonth;
  DateTime? selectedDay;
  CalendarInitial({required this.selectedMonth});
}

class CalendarSwitch extends CalendarState {}
