import 'package:eventeno/ui/components/custom_app_bar.dart';
import 'package:eventeno/ui/components/custom_drawer.dart';
import 'package:flutter/material.dart';

import 'scan_result_component/accepted_result_body.dart';
import 'scan_result_component/rejected_result_body.dart';

class ScanResultScreen extends StatelessWidget {
  final bool  acceptedTicket;
  const ScanResultScreen( {Key key, this.acceptedTicket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isHome: false,
        title: acceptedTicket? 'Ticket Accepted':'Ticket Rejected',
      ),
      endDrawer: CustomDrawer(currentPage: 'scan',),
      body:acceptedTicket? ScanResultAcceptedBody():ScanResultRejectedBody(),

    );
  }
}
