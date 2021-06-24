import 'package:eventeno/constants/colors.dart';
import 'package:eventeno/data_models/ticket_status.dart';
import 'package:flutter/material.dart';

class TicketLogListRowElement extends StatelessWidget {
  final int index;

  const TicketLogListRowElement({
    Key key,
    @required this.statusList,
    this.index,
  }) : super(key: key);

  final List<TicketStatus> statusList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGrayBackGround,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/statusicon.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      statusList[index].status
                          ? 'Status: Approved'
                          : 'Status: Approved',
                      style: TextStyle(
                          fontSize: 15,
                          color: statusList[index].status
                              ? kApprovedTextColor
                              : kRejectedTextColor),
                    ),
                    Text(statusList[index].date)
                  ],
                ),
              )
            ],
          ),
          index == statusList.length - 1
              ? SizedBox(
                  height: 1,
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 45, right: 45),
                  child: Divider(
                    height: 2,
                    color: kChipColorTitle.withOpacity(.13),
                  ),
                )
        ],
      ),
    );
  }
}
