import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:zip_market/common/widgets/appbar/appbar.dart';
import 'package:zip_market/common/widgets/images/circular_image.dart';
import 'package:zip_market/common/widgets/texts/section_heading.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZMAppBar(showBackArrow: true, title: Text('Profile')),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ZMSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ZMCircularImage(
                      image: ZMImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              //Details
              const SizedBox(height: ZMSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ZMSizes.spaceBtwItems),
              const ZMSectionHeading(
                title: 'Profile Informations',
                showActionButton: false,
              ),
              const SizedBox(height: ZMSizes.spaceBtwItems),

              ZMProfileMenu(title: 'Name', value: 'SackoBA', onPressed: () {}),
              ZMProfileMenu(
                title: 'Username',
                value: 'SackoBA',
                onPressed: () {},
              ),

              const SizedBox(height: ZMSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: ZMSizes.spaceBtwItems),

              // Heading Personal Infos
              ZMProfileMenu(
                title: 'User ID',
                value: '44783',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              ZMProfileMenu(
                title: 'E-mail',
                value: 'sackobaservice@gmail.com',
                onPressed: () {},
              ),
              ZMProfileMenu(
                title: 'Phone Number',
                value: '225 0702030408',
                onPressed: () {},
              ),
              ZMProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              ZMProfileMenu(
                title: 'Date of Birth',
                value: '08 Oct, 2000',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(height: ZMSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
