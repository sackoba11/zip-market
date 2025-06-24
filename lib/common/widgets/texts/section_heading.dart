import 'package:flutter/material.dart';

class ZMSectionHeading extends StatelessWidget {
  const ZMSectionHeading({
    super.key,
    this.textolor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
  });
  final Color? textolor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: textolor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}
