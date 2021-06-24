import 'package:eventeno/constants/colors.dart';
import 'package:eventeno/ui/components/custom_button_with_icon.dart';
import 'package:flutter/material.dart';

class ScanResultAcceptedBody extends StatelessWidget {
  const ScanResultAcceptedBody({Key key}) : super(key: key);

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
              Image.asset('assets/images/done.png'),
              SizedBox(
                height: 30,
              ),
              Text(
                'Ticket Accepted',
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
                'DATE: 22 May 2020',
                style: TextStyle(fontSize: 12, color: kGrayTextColor),
              ),
              Text(
                'PRICE: 0',
                style: TextStyle(fontSize: 12, color: kGrayTextColor),
              ),
              Text(
                'CATEGORY: TEST',
                style: TextStyle(fontSize: 12, color: kGrayTextColor),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: CustomButtonWithIcon(
                  title: 'Rescan',
                  enabled: true,
                  buttonIcon: Icon(
                    Icons.qr_code_scanner,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => ScanResultScreen()));
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
