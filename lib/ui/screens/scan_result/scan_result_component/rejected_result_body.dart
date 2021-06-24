import 'package:eventeno/constants/colors.dart';
import 'package:eventeno/ui/components/custom_button_with_icon.dart';
import 'package:eventeno/ui/screens/ticket_log/ticket_log_screen.dart';
import 'package:flutter/material.dart';

class ScanResultRejectedBody extends StatelessWidget {
  const ScanResultRejectedBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Image.asset('assets/images/error.png'),
              SizedBox(
                height: 30,
              ),
              Text(
                'Ticket Rejected',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'TICKET NO.: 15131561056165743165165',
                style: TextStyle(fontSize: 12, color: kGrayTextColor),
              ),
              Spacer(),
              Text(
                'Attended Before on 22 May 2020 4:00 PM',
                style: TextStyle(fontSize: 12, color: kPrimaryColor),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TicketLogScreen()));
                },
                child: Chip(
                    backgroundColor: kPrimaryColor.withOpacity(.1),
                    label: Text(
                      'Check Ticket Log',
                      style: TextStyle(fontSize: 12, color: kPrimaryColor),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: CustomButtonWithIcon(
                  title: 'Rescan',
                  enabled: true,
                  buttonIcon: Icon(
                    Icons.qr_code_scanner,
                    color: Colors.white,
                  ),
                  onPressed: () {

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
