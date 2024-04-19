import 'package:dash_board/expenses_new.dart';
import 'package:dash_board/quick_new.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesNew(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: QuickInvoNew())
        ],
      ),
    );
  }
}

class CustomDrop extends StatelessWidget {
  const CustomDrop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: 'All Time',
      // Change this to match one of the DropdownMenuItem values
      items: const [
        DropdownMenuItem(
          value: 'All Time',
          child: Text('All Time'),
        ),
        DropdownMenuItem(
          value: 'Last 7 days',
          child: Text('Last 7 days'),
        ),
        DropdownMenuItem(
          value: 'Last 30 days',
          child: Text('Last 30 days'),
        ),
        DropdownMenuItem(
          value: 'Last 90 days',
          child: Text('Last 90 days'),
        ),
      ],
      onChanged: (value) {},
    );
  }
}
