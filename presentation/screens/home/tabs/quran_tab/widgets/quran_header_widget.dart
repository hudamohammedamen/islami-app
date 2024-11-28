import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranHeaderWidget extends StatelessWidget {
  const QuranHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: Theme.of(context).dividerColor, width: 2))),
      child: IntrinsicHeight(
        child: Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 3,
                child: Text(
                    textAlign: TextAlign.center,
                    AppLocalizations.of(context)!.chapterName,
                    style: Theme.of(context).textTheme.headlineMedium)),
            Container(
              color: Theme.of(context).dividerColor,
              width: 2,
            ),
            Expanded(
                flex: 3,
                child: Text(
                    textAlign: TextAlign.center,
                    AppLocalizations.of(context)!.versesNumber,
                    style: Theme.of(context).textTheme.headlineMedium)),
          ],
        ),
      ),
    );
  }
}
