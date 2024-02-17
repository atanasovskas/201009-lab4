import 'package:flutter/material.dart';
import 'package:mis_lab3/models/Appointment.dart';

class AppointmentCard extends StatelessWidget {
  final Appointment appointment;

  const AppointmentCard(this.appointment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            appointment.subject,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('${appointment.date} ${appointment.time}', style:  const TextStyle(color: Colors.grey),),
        ],
      ),
    );
  }
}
