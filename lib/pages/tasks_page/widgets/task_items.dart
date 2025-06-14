import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_cycle8_sat/shared_components/theme/colors.dart';

class TaskItems extends StatelessWidget {
  const TaskItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(14.0)),
      child: Slidable(
        startActionPane: ActionPane(
          extentRatio: 0.25,
          motion: BehindMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {},
              icon: Icons.delete,
              label: "Delete",
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14.0),
                bottomLeft: Radius.circular(14.0),
              ),
            ),
          ],
        ),
        endActionPane: ActionPane(
          extentRatio: 0.25,
          motion: BehindMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {},
              icon: Icons.edit,
              label: "Edite",
              backgroundColor: Colors.amber,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(14.0),
                bottomRight: Radius.circular(14.0),
              ),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(14.0)),
          child: Row(
            children: [
              Container(
                width: 5,
                height: 70,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12.0)),
              ),
              const SizedBox(
                width: 14.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Play Basket Ball",
                      style: theme.textTheme.bodyMedium,
                    ),
                    Row(
                      children: [
                        Icon(Icons.watch_later_outlined),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "10:30 AM",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 14.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12.0)),
                child: Icon(
                  Icons.check,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
