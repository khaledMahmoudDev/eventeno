import 'package:eventeno/ui/screens/home/home_components/event_item_row_element.dart';
import 'package:eventeno/view_models/event_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var eventViewModel = Provider.of<EventsViewModel>(context);
    var events = eventViewModel.events;
    return Padding(
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            return EventItemRowElement(event: events[index],);
          }),
    );
  }
}

