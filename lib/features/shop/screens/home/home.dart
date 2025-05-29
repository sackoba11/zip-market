import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ZMPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  ZMHomeAppBar(),
                  SizedBox(height: ZMSizes.spaceBtwSections),

                  /// Searchbar
                  ZMSearchContainer(text: 'Search in Store', onTap: () {}),
                  SizedBox(height: ZMSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: ZMSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///Heading
                        ZMSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textolor: ZMColors.white,
                        ),
                        SizedBox(height: ZMSizes.spaceBtwItems),

                        /// Categories
                        ZMHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
