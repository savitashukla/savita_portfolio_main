import 'package:flutter/material.dart';
import 'package:savita_portfolio_main/configue.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';

class MS4Experience extends StatelessWidget {
  const MS4Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.experienceKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.experienceTitle,
                description: DataValues.experienceDescription),
            const SizedBox(height: 30.0),
            ...DataValues.experiences.map((e) =>
                Container(
                  width: (context.width*0.48),
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: ContainerCard().type3(
                    image: e.image,
                    title: e.companyName,
                    role: e.position,
                    years: e.workingPeriod,
                    values: '',
                    message: e.description,
                    url: DataValues.linkedinURL,
                    isButtonEnabled: false,
                    skills: e.gainSkills,
                    skillTitle: 'Skills -',
                  ),
                ),).toList(),
            const SizedBox(height: 40.0),
            // Center(
            //   child: ContainerBanner().type1(
            //       isDesktop: false,
            //       title1: DataValues.experienceBanner,
            //       title2: DataValues.experienceBannerTitle,
            //       description: DataValues.experienceBannerWeb,
            //       image: 'logo',
            //       message: 'View Toolkit',
            //       url: DataValues.toolkitURL),
            // ),
          ],
        ),
      ),
    );
  }
}
