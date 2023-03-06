import 'package:flutter/material.dart';
import 'colors.dart';
import 'text_styles.dart';

class StyleGuide extends StatelessWidget {
  const StyleGuide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Center(
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  'open fashion'.toUpperCase(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'subtitle one'.toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'subtitle two'.toUpperCase(),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'bodyLarge',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'boydMedium',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'bodySmall',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  color: AppColor.titleColor,
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  color: AppColor.bodyColor,
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  color: AppColor.labelColor,
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  color: AppColor.placeholderColor,
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  color: AppColor.lineColor,
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  color: AppColor.inputColor,
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  color: AppColor.backgroundColor,
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  color: AppColor.offWhiteColor,
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  color: AppColor.primaryColor,
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  color: AppColor.secondaryColor,
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'open fashion'.toUpperCase(),
                  style: AppTextStyles.title,
                ),
                Text(
                  'subtitle one'.toUpperCase(),
                  style: AppTextStyles.subTitleM,
                ),
                Text(
                  'subtitle two'.toUpperCase(),
                  style: AppTextStyles.subTitleS,
                ),
                Text(
                  'bodyLarge',
                  style: AppTextStyles.bodyL,
                ),
                Text(
                  'boydMedium',
                  style: AppTextStyles.bodyM,
                ),
                Text(
                  'bodySmall',
                  style: AppTextStyles.bodyS,
                ),
              ],
            )
          ],
        ),
      )
    ]);
  }
}
