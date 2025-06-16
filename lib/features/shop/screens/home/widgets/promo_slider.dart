import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zip_market/features/shop/controllers/home_controller.dart';

import '../../../../../common/widgets/custom_shapes/containers/cirlcular_container.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banners});
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselView(
          itemExtent: 0.8,
          children:
              banners.map((url) => ZMRoundedImage(imageUrl: url)).toList(),
        ),
        //TODO: install CarouselSlider package

        // CarouselSlider(
        //   options:CarouselOptions(viewportFraction:1,
        // onPageChanged: (index, _)=> controller.updatePageIndicator(index)
        // ),
        //   items:banners.map((url) => RoundedImage(imageUrl: url)).toList(),
        // ),
        const SizedBox(height: ZMSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  ZMCirlcularContainer(
                    width: 20,
                    height: 4,
                    backgoundColor:
                        controller.carouselCurrentIndex.value == i
                            ? ZMColors.primary
                            : ZMColors.grey,
                    margin: EdgeInsets.only(right: 10),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
