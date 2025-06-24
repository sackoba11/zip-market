import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:zip_market/common/widgets/appbar/appbar.dart';
import 'package:zip_market/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:zip_market/common/widgets/listt_tile/settings_menu_tile.dart';
import 'package:zip_market/common/widgets/texts/section_heading.dart';

import '../../../../common/widgets/listt_tile/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            ZMPrimaryHeaderContainer(
              child: Column(
                children: [
                  ZMAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: ZMColors.white),
                    ),
                  ),

                  //User Profile Card
                  ZMUserProfileTile(),
                  const SizedBox(height: ZMSizes.spaceBtwSections),
                ],
              ),
            ),

            //Body
            Padding(
              padding: EdgeInsets.all(ZMSizes.defaultSpace),
              child: Column(
                children: [
                  //Account Settings
                  ZMSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: ZMSizes.spaceBtwItems),

                  ZMSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  ZMSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove product and move to checkout',
                    onTap: () {},
                  ),
                  ZMSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    onTap: () {},
                  ),
                  ZMSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  ZMSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    onTap: () {},
                  ),
                  ZMSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                    onTap: () {},
                  ),
                  ZMSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected account',
                    onTap: () {},
                  ),

                  // App Settings
                  SizedBox(height: ZMSizes.spaceBtwSections),
                  ZMSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: ZMSizes.spaceBtwItems),
                  ZMSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload data to your Cloud Firebase',
                    onTap: () {},
                  ),
                  ZMSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommandation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  ZMSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  ZMSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality ti be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  // Logout Button
                  const SizedBox(height: ZMSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: ZMSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
