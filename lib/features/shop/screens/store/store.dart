import 'package:flutter/material.dart';
import 'package:zip_market/common/widgets/appbar/appbar.dart';
import 'package:zip_market/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:zip_market/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:zip_market/common/widgets/layouts/grid_layout.dart';
import 'package:zip_market/common/widgets/products_cart/cart/cart_menu_icon.dart';
import 'package:zip_market/common/widgets/texts/section_heading.dart';

import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZMHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: ZMAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [ZMCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? ZMColors.black : ZMColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: EdgeInsets.all(ZMSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(height: ZMSizes.spaceBtwItems),
                    ZMSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: ZMSizes.spaceBtwSections),

                    // Featured Brands
                    ZMSectionHeading(title: 'Featured Brans', onPressed: () {}),
                    SizedBox(height: ZMSizes.spaceBtwItems / 1.5),

                    GridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: ZMRoundedContainer(
                            padding: EdgeInsets.all(ZMSizes.sm),
                            showBorder: true,
                            backgoundColor: Colors.transparent,
                            child: Row(
                              children: [
                                // Icon
                                Flexible(
                                  child: ZMCircularImage(
                                    image: ZMImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        dark ? ZMColors.white : ZMColors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: ZMSizes.spaceBtwItems / 2,
                                ),

                                // Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ZMBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
