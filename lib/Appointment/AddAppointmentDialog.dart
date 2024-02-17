import 'package:flutter/material.dart';
import 'package:mis_lab3/models/Appointment.dart';

class AddAppointmentDialog extends StatefulWidget {
  final Function(Appointment) onAddAppointment;

  const AddAppointmentDialog({Key? key, required this.onAddAppointment}) : super(key: key);

  @override
  _AddAppointmentDialogState createState() => _AddAppointmentDialogState();
}

class _AddAppointmentDialogState extends State<AddAppointmentDialog> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Appointment'),
      content: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: timeController,
            decoration: const InputDecoration(labelText: 'Time'),
          ),
          TextField(
            controller: dateController,
            decoration: const InputDecoration(labelText: 'Date'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            final String name = nameController.text;
            final String time = timeController.text;
            final String date = dateController.text;

            if (name.isNotEmpty && time.isNotEmpty && date.isNotEmpty) {
              final Appointment newAppointment = Appointment(name, date, time);

              widget.onAddAppointment(newAppointment);

              Navigator.of(context).pop();
            } else {
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}