import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';

class ZMUserProfileTile extends StatelessWidget {
  const ZMUserProfileTile({super.key, required this.onPressed});

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ZMCircularImage(
        image: ZMImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'SackoBA',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: ZMColors.white),
      ),
      subtitle: Text(
        'Sackobaservice@gmail.com',
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: ZMColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(Iconsax.edit, color: ZMColors.white),
      ),
    );
  }
}
