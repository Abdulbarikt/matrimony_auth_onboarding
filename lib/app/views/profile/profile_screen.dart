import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:mat_dummy/app/utils/app_textstyles.dart';
import 'package:mat_dummy/app/utils/consts.dart';
import 'package:mat_dummy/app/views/profile/widgets/column_text.dart';
import 'package:mat_dummy/app/views/profile/widgets/dotted_line.dart';
import 'package:mat_dummy/app/views/profile/widgets/editCotainerWidget.dart';
import 'package:mat_dummy/app/views/profile/widgets/info_card_widget.dart';
import 'package:mat_dummy/app/views/profile/widgets/profile_card_condainer.dart';
import 'package:mat_dummy/app/views/profile/widgets/profile_container_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              ProfileCardContainer(size: size),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.white60,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ColumnText(tile: 'Name', sub: 'Salman'),
                          DottedLinesWidget(),
                          ColumnText(tile: 'RM ID', sub: 'RM21D2F'),
                          DottedLinesWidget(),
                          ColumnText(tile: 'Mobile No', sub: '8590278752'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Profile Completion Status',
                            style: AppTextStyles.primaryProfileTextStyle),
                        Text('60%',
                            style: AppTextStyles.primaryProfileNumTextStyle)
                      ],
                    ),
                    const SizedBox(height: 5),
                    LinearProgressIndicator(
                      color: newPrimary,
                      borderRadius: BorderRadius.circular(10),
                      value: 0.6,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text('Profile View : ',
                            style: AppTextStyles.secondryProfileTextStyle),
                        Text('50',
                            style: AppTextStyles.secondryProfileTextStyle)
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Profile Details',
                            style: AppTextStyles.primaryProfileTitleTextStyle),
                        Text('edit',
                            style: AppTextStyles.secondryProfileTextStyle)
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children:
                          List.generate(4, (index) => InfoCard(index: index)),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
              left: size.width * 0.06,
              top: size.height * 0.15,
              child: const ProfileContainerWidget()),
          Positioned(
              left: size.width * 0.25,
              top: size.height * 0.23,
              child: const EditContainerWidget()),
        ],
      ),
    );
  }
}
