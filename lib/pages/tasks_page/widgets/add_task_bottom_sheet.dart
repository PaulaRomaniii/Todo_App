import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {
  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Add Task",
            style: theme.textTheme.bodyMedium!.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "you must enter task title";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              label: Text("Task Title"),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "you must enter task description";
              } else if (value.length < 10) {
                return "decription can't be less than 10 char..";
              } else {
                return null;
              }
            },
            maxLines: 4,
            minLines: 4,
            decoration: InputDecoration(
              label: Text("Task Description"),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            child: Text(
              "Select Date",
              textAlign: TextAlign.start,
              style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black),
            ),
          ),
          InkWell(
            onTap: () {
              showBottomSheetDatepicker();
            },
            child: Text(
              "6/5/2023",
              style: theme.textTheme.bodySmall,
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                print("text is  valide");
              }
            },
            child: Text(
              "Submit New Task ",
              style: theme.textTheme.bodyMedium!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  void showBottomSheetDatepicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 365),
      ),
    );
  }
}
