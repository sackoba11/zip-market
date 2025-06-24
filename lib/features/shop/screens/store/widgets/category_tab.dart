import 'package:flutter/material.dart';
import 'package:zip_market/common/widgets/layouts/grid_layout.dart';
import 'package:zip_market/common/widgets/products_cart/product_cards/product_card_vertical.dart';
import 'package:zip_market/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ZMCategoryTabs extends StatelessWidget {
  const ZMCategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(ZMSizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              ZMBrandShowCase(
                images: [
                  ZMImages.productImage3,
                  ZMImages.productImage2,
                  ZMImages.productImage1,
                ],
              ),
              const SizedBox(height: ZMSizes.spaceBtwItems),

              //Products
              ZMSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: ZMSizes.spaceBtwItems),
              ZMGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => ZMProductCardVertical(),
              ),
              const SizedBox(height: ZMSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
