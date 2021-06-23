import 'package:eventeno/data_models/event_model.dart';

final List<String> categories = ['Entry Ticket', 'Gate B1'];
final List<String> time = ['04:30', '08:00', '10:15', '06:45'];
final List<String> date = [
  '22 May 2020',
  '25 May 2020',
  '26 May 2020',
  '27 May 2020'
];

class EventsViewModel {
  List<Event> events = [
    Event('assets/images/eve1.png', 'Riyadh winter wonderland', 36542, 25461, date,
        time, categories),
    Event('assets/images/eve2.png', 'Hunted House Carnival', 36542, 25461, date,
        time, categories),
  ];
}
