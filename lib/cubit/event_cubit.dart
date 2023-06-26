import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class EventCubit extends Cubit<EventState> {
  EventCubit() : super(EventInitial());
}

@immutable
abstract class EventState {}

class EventInitial extends EventState {}
