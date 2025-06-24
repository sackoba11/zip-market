import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:zip_market/common/widgets/appbar/appbar.dart';
import 'package:zip_market/common/widgets/icons/circular_icon.dart';
import 'package:zip_market/common/widgets/layouts/grid_layout.dart';
import 'package:zip_market/common/widgets/products_cart/product_cards/product_card_vertical.dart';
import 'package:zip_market/features/shop/screens/home/home.dart';

import '../../../../utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZMAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ZMCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ZMSizes.defaultSpace),
          child: Column(
            children: [
              ZMGridLayout(
                itemCount: 7,
                itemBuilder: (_, index) => ZMProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
