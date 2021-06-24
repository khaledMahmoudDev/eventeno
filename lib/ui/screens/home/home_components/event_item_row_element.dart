import 'package:eventeno/data_models/event_model.dart';
import 'package:eventeno/ui/components/custom_button_with_icon.dart';
import 'package:eventeno/ui/screens/event_details/EventDetailsScreen.dart';
import 'package:flutter/material.dart';

import 'chip_with_title_under.dart';

class EventItemRowElement extends StatelessWidget {
  final Event event;

  const EventItemRowElement({
    Key key,
    @required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          child: Column(
            children: [Image.asset(
              event.img,
              width: double.infinity,
              fit: BoxFit.fill,
            ),

              SizedBox(
                height: 30,
              ),
              Container(
                width: 250,
                child: Center(
                  child: Text(
                    event.title.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Spacer(),
                  ChipWithTitleUnder(
                    title: 'Attended',
                    chipTitle: '${event.attended}',
                  ),
                  Spacer(),
                  ChipWithTitleUnder(
                    title: 'Subscribers',
                    chipTitle: '${event.subscribers}',
                  ),
                  Spacer()
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25, bottom: 30),
                child: CustomButtonWithIcon(
                  title: 'Details',
                  enabled: true,
                  buttonIcon: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EventDetailsScreen(selectedEvent: event,)));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
