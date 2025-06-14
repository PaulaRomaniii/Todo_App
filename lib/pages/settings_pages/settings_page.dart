import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo_cycle8_sat/pages/settings_pages/widgets/language_bottom_sheet.dart';
import 'package:todo_cycle8_sat/shared_components/theme/colors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var applocal = AppLocalizations.of(context);
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            applocal!.language,
            style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 10.0),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: Colors.white,
                border: Border.all(
                  color: primaryColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "English",
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: theme.primaryColor),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    // color: primaryColor
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Text(
            applocal.mode,
            style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 10.0),
          InkWell(
            onTap: () {
              // showThemeBottomSheet();
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: Colors.white,
                border: Border.all(
                  color: primaryColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Light",
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: theme.primaryColor),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    // color: primaryColor
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}
