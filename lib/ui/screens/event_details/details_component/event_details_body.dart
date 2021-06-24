import 'package:eventeno/constants/colors.dart';
import 'package:eventeno/data_models/event_model.dart';
import 'package:eventeno/ui/components/custom_button_with_icon.dart';
import 'package:eventeno/ui/screens/home/home_components/chip_with_title_under.dart';
import 'package:eventeno/ui/screens/scan_result/scan_result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'field_with_dialog.dart';

class EventDetailsBody extends StatefulWidget {
  final Event selectedEvent;

  EventDetailsBody({Key key, @required this.selectedEvent}) : super(key: key);

  @override
  _EventDetailsBodyState createState() => _EventDetailsBodyState();
}

class _EventDetailsBodyState extends State<EventDetailsBody> {
  String pickedDate = '';

  String pickedTime = '';

  String pickedCategory = '';

  // acceptedTicket just to accept ticket once and refuse it other one
  bool acceptedTicket = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Image.asset(
              widget.selectedEvent.img,
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
                    chipTitle: '${widget.selectedEvent.attended}',
                  ),
                  Spacer(),
                  ChipWithTitleUnder(
                    title: 'Subscribers',
                    chipTitle: '${widget.selectedEvent.subscribers}',
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
              child: FieldWithDialog(
                title: 'Date',
                selectedItem: pickedDate,
                dataList: widget.selectedEvent.date,
                onItemPicked: (val) {
                  setState(() {
                    pickedDate = val;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: FieldWithDialog(
                title: 'Time',
                selectedItem: pickedTime,
                dataList: widget.selectedEvent.time,
                onItemPicked: (val) {
                  setState(() {
                    pickedTime = val;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: FieldWithDialog(
                title: 'Category',
                selectedItem: pickedCategory,
                dataList: widget.selectedEvent.categories,
                onItemPicked: (val) {
                  setState(() {
                    pickedCategory = val;
                  });
                },
              ),
            ),
            picking_result(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: CustomButtonWithIcon(
                title: 'Scan Ticket',
                enabled: validataPicing(),
                buttonIcon: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                ),
                onPressed: !validataPicing()
                    ? null
                    : () {
                        setState(() {
                          acceptedTicket = !acceptedTicket;
                        });
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScanResultScreen(
                                  acceptedTicket: acceptedTicket,
                                )));
                      },
              ),
            )
          ],
        ),
      ),
    );
  }

  bool validataPicing() {
    if (pickedDate != '' && pickedTime != '' && pickedCategory != '')
      return true;
    else
      return false;
  }

  Widget picking_result() {
    if (validataPicing()) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: FormField(builder: (builder) {
          return InputDecorator(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            ),
            child: Row(
              children: [
                Image.asset('assets/images/entertainment.png'),
                SizedBox(
                  width: 6,
                ),
                Text('250 Attended'),
                Spacer(),
                Image.asset('assets/images/subscriber.png'),
                SizedBox(
                  width: 6,
                ),
                Text('53 Subscribers'),
              ],
            ),
          );
        }),
      );
    } else {
      return SizedBox(
        height: 6,
      );
    }
  }
}
