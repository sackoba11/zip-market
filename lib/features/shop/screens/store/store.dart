import 'package:flutter/material.dart';
import 'package:zip_market/common/widgets/appbar/appbar.dart';
import 'package:zip_market/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:zip_market/common/widgets/layouts/grid_layout.dart';
import 'package:zip_market/common/widgets/products_cart/cart/cart_menu_icon.dart';
import 'package:zip_market/common/widgets/texts/section_heading.dart';
import 'package:zip_market/features/shop/screens/store/widgets/category_tab.dart';

import '../../../../common/widgets/appbar/tab_bar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZMHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: ZMAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
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
                      ZMSectionHeading(
                        title: 'Featured Brans',
                        onPressed: () {},
                      ),
                      SizedBox(height: ZMSizes.spaceBtwItems / 1.5),

                      ZMGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return ZMBrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),
                //Tabs Bar
                bottom: ZMTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Costmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ZMCategoryTabs(),
              ZMCategoryTabs(),
              ZMCategoryTabs(),
              ZMCategoryTabs(),
              ZMCategoryTabs(),
            ],
          ),
        ),
      ),
    );
  }
}
