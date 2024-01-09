import 'package:flutter/material.dart';
import 'package:mat_dummy/app/utils/app_textstyles.dart';
import 'package:mat_dummy/app/utils/consts.dart';

class InfoCard extends StatelessWidget {
  final int index;
  const InfoCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.white60,
      child: ExpansionTile(
        leading: Icon(profileIcon[index], color: Colors.grey),
        title: Text(
          profileTitle[index],
          style: AppTextStyles.profileTitleTextStyle,
        ),
        maintainState: true,
        expandedAlignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        basicInformationTitle.length,
                            (index) => Text('${basicInformationTitle[index]}:',
                            style: AppTextStyles.secondryProfileTextStyle)),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Salman',
                          style: AppTextStyles.profileBasicInfoTextStyle),
                      Text('Islam',
                          style: AppTextStyles.profileBasicInfoTextStyle),
                      Text('Sunni',
                          style: AppTextStyles.profileBasicInfoTextStyle),
                      Text('Male',
                          style: AppTextStyles.profileBasicInfoTextStyle),
                      Text('23',
                          style: AppTextStyles.profileBasicInfoTextStyle),
                      Text('10-10-2000',
                          style: AppTextStyles.profileBasicInfoTextStyle),
                      Text('Not Married',
                          style: AppTextStyles.profileBasicInfoTextStyle),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}