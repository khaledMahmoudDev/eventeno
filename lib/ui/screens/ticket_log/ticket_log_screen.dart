import 'package:eventeno/ui/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'ticket_log_component/ticket_log_body.dart';

class TicketLogScreen extends StatelessWidget {
  const TicketLogScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isHome: false,
        title: 'Ticket Log',
      ),
      body: TicketLogBody(),
    );
  }
}
