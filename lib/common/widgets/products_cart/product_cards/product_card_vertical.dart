import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:zip_market/common/styles/shadows.dart';
import 'package:zip_market/common/widgets/texts/product_price_text.dart';
import 'package:zip_market/common/widgets/texts/product_title_text.dart';
import 'package:zip_market/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZMHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ZMShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ZMSizes.productImageRadius),
          color: dark ? ZMColors.darkGrey : ZMColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, WishList button
            ZMRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(ZMSizes.sm),
              backgoundColor: dark ? ZMColors.dark : ZMColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  ZMRoundedImage(
                    imageUrl: ZMImages.productImage1,
                    applyImageRadius: true,
                  ),

                  // Sale tag
                  Positioned(
                    top: 12,
                    child: ZMRoundedContainer(
                      radius: ZMSizes.sm,
                      backgoundColor: ZMColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: ZMSizes.sm,
                        vertical: ZMSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: ZMColors.black),
                      ),
                    ),
                  ),

                  // Favorite Icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: const ZMCircularIcon(
                      icon: Iconsax.heart,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: ZMSizes.spaceBtwItems / 2),
            // Details
            Padding(
              padding: EdgeInsets.only(left: ZMSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ZMProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(height: ZMSizes.spaceBtwItems / 2),
                  ZMBrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                Padding(
                  padding: const EdgeInsets.only(left: ZMSizes.sm),
                  child: ProductPriceText(price: '34.7'),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ZMColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ZMSizes.cardRadiusMd),
                      bottomRight: Radius.circular(ZMSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: ZMSizes.iconLg * 1.2,
                    height: ZMSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: ZMColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
