import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateCapsule extends StatelessWidget {
  final DateTime date;
  final VoidCallback onDelete;

  const DateCapsule({required this.date, required this.onDelete, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String month = DateFormat('MMM').format(date);
    String day = DateFormat('E').format(date);
    String dateNum = DateFormat('d').format(date);
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                Text(
                  month,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  day,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),

                Text(
                  dateNum,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}