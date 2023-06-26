import 'package:calendar/models/event.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Event> listEvents = [];
    return Column(
      children: [
        const Text('События'),
        if (listEvents.isEmpty)
          const Text('Здесь пока пусто, добавьте событие')
        else
          ListView.builder(
            itemBuilder: (context, index) => ListTile(
              leading: Text(
                listEvents[index].date.toString(),
              ),
              title: Text(listEvents[index].name),
            ),
          ),
      ],
    );
  }
}
