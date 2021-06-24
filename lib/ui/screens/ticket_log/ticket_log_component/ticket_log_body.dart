import 'package:eventeno/constants/colors.dart';
import 'package:eventeno/data_models/ticket_status.dart';
import 'package:eventeno/ui/components/custom_button.dart';
import 'package:eventeno/ui/components/custom_button_with_icon.dart';
import 'package:eventeno/view_models/status_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ticket_log_litst_row_item.dart';

class TicketLogBody extends StatelessWidget {
  const TicketLogBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ticketStatus = Provider.of<TicketStatusViewModel>(context);
    var statusList = ticketStatus.ticketStatus;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Ticket Log',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '15131561056165743165165',
                style: TextStyle(fontSize: 12, color: kGrayTextColor),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                child: CustomButton(
                  title: 'Search',
                  enabled: true,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      itemCount: statusList.length,
                      itemBuilder: (context, index) {
                        return TicketLogListRowElement(
                          statusList: statusList,
                          index: index,
                        );
                      }),
                ),
              ),
              Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: CustomButtonWithIcon(
                  title: 'Back',
                  enabled: true,
                  buttonIcon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
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
