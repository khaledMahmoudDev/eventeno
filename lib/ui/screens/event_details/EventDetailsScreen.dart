import 'package:eventeno/data_models/event_model.dart';
import 'package:eventeno/ui/screens/event_details/details_component/event_details_body.dart';
import 'package:flutter/material.dart';

class EventDetailsScreen extends StatelessWidget {
  final Event selectedEvent;

  const EventDetailsScreen({Key key,@required this.selectedEvent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: EventDetailsBody(selectedEvent: selectedEvent,),
    );
  }
}
