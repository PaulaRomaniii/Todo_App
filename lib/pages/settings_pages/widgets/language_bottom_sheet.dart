import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_cycle8_sat/providers/settings_provider.dart';
import 'package:todo_cycle8_sat/shared_components/theme/colors.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              settingsProvider.changeCurrentLanguage("en");
            },
            child: settingsProvider.currentLanguage == "en"
                ? getSelectedItem("English")
                : getUnselectedItem("English"),
          ),
          const SizedBox(height: 8.0),
          InkWell(
            onTap: () {
              settingsProvider.changeCurrentLanguage("ar");
            },
            child: settingsProvider.currentLanguage == "en"
                ? getUnselectedItem("عربي")
                : getSelectedItem("عربي"),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: primaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Theme.of(context).accentColor),
          ),
          Icon(
            Icons.check,
            color: Theme.of(context).accentColor,
          )
        ],
      ),
    );
  }

  Widget getUnselectedItem(String title) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
