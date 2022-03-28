import 'package:expensives/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListItemOld extends StatelessWidget {
  final List<Transaction> transactions;
  final int index;
  ListItemOld(this.transactions, this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            child: Text(
              '\$${transactions[index].amount.toStringAsFixed(2)}',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                  style: BorderStyle.solid),
            ),
          ),
          Column(
            children: [
              Text(
                transactions[index].title,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                DateFormat.yMMMMd().format(transactions[index].date),
                style: Theme.of(context).textTheme.headline1,
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )
        ],
      ),
      elevation: 5,
    );
  }
}
