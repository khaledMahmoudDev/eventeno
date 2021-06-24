import 'package:eventeno/constants/colors.dart';
import 'package:eventeno/ui/components/custom_button.dart';
import 'package:eventeno/ui/components/custom_button_with_icon.dart';
import 'package:eventeno/view_models/status_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                'TICKET NO.: 15131561056165743165165',
                style: TextStyle(fontSize: 12, color: kGrayTextColor),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                child: CustomButton(
                  title: 'Search',
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                      padding: const EdgeInsets.only(
                                          top: 8.0, left: 45, right: 45),
                                      child: Divider(
                                        height: 2,
                                        color: kChipColorTitle.withOpacity(.13),
                                      ),
                                    )
                            ],
                          ),
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
                  onPressed: (){
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
