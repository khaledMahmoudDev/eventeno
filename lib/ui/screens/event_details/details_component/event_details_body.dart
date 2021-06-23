import 'package:eventeno/constants/colors.dart';
import 'package:eventeno/data_models/event_model.dart';
import 'package:eventeno/ui/components/custom_button_with_icon.dart';
import 'package:eventeno/ui/screens/home/home_components/chip_with_title_under.dart';
import 'package:flutter/material.dart';

import 'drop_down_field.dart';

class EventDetailsBody extends StatelessWidget {
  final Event selectedEvent;

  const EventDetailsBody({Key key, @required this.selectedEvent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Image.asset(
              selectedEvent.img,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Container(
              height: 130,
              color: kGrayBackGround,
              width: double.infinity,
              child: Row(
                children: [
                  Spacer(),
                  ChipWithTitleUnder(
                    title: 'Attended',
                    chipTitle: '${selectedEvent.attended}',
                  ),
                  Spacer(),
                  ChipWithTitleUnder(
                    title: 'Subscribers',
                    chipTitle: '${selectedEvent.subscribers}',
                  ),
                  Spacer()
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: DropDownField(title: 'Date'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: DropDownField(title: 'Time'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: DropDownField(title: 'Category',),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: CustomButtonWithIcon(
                title: 'Scan Ticket',
                buttonIcon: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => EventDetailsScreen(selectedEvent: event,)));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
