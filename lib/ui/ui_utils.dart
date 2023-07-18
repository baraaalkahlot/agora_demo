import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_dimen.dart';
import '../../constants/assets_path.dart';
import '../services/app_localization.dart';
import 'app_styles.dart';

///All the custom UI widgets like an input text box with search icon, autocomplete widgets,
///Error message banners, custom checkbox chips related utils can be present in this file
///and will be used thought the application.

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double width;
  final Color backgroundColor;
  final Color borderColor;
  final String? iconPath;
  final Color labelColor;
  final TextStyle labelStyle;

  const PrimaryButton(
    BuildContext context, {
    Key? key,
    required this.label,
    required this.onPressed,
    this.width = double.infinity,
    this.iconPath,
    this.backgroundColor = AppColors.primaryColor,
    this.borderColor = AppColors.primaryColor,
    this.labelColor = AppColors.romance,
    this.labelStyle = TextStyleExtension.normalMedTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, AppDimen.buttonHeightNormal),
        backgroundColor: backgroundColor,
        side: BorderSide(width: AppDimen.sizeButtonBorder, color: borderColor),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimen.sizeButtonCorner)),
      ),
      onPressed: onPressed,
      child: Text(
        textAlign: TextAlign.center,
        label,
        style: labelStyle.copyWith(color: labelColor),
      ),
    );
  }
}

class IconPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final String iconPath;
  final double width;
  final Color backgroundColor;
  final Color borderColor;
  final Color labelColor;
  final TextStyle labelStyle;
  final double? assetRadius;

  const IconPrimaryButton(
    BuildContext context, {
    Key? key,
    required this.label,
    required this.onPressed,
    required this.iconPath,
    this.width = double.infinity,
    this.backgroundColor = AppColors.primaryColor,
    this.borderColor = AppColors.primaryColor,
    this.labelColor = AppColors.romance,
    this.labelStyle = TextStyleExtension.normalMedTextStyle,
    this.assetRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: SvgPicture.asset(
        iconPath,
        fit: BoxFit.contain,
        width: assetRadius,
        height: assetRadius,
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, AppDimen.buttonHeightNormal),
        backgroundColor: backgroundColor,
        side: BorderSide(width: AppDimen.sizeButtonBorder, color: borderColor),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimen.sizeButtonCorner)),
      ),
      onPressed: onPressed,
      label: Text(
        textAlign: TextAlign.center,
        label,
        style: labelStyle.copyWith(color: labelColor),
      ),
    );
  }
}

class IconOutlineButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double width;
  final Color borderColor;
  final String iconPath;
  final TextStyle labelStyle;

  const IconOutlineButton(
    BuildContext context, {
    Key? key,
    required this.label,
    required this.onPressed,
    required this.iconPath,
    this.width = double.infinity,
    this.borderColor = AppColors.amaranth,
    this.labelStyle = TextStyleExtension.normalMedTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: SvgPicture.asset(iconPath),
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.amaranth,
        minimumSize: Size(width, AppDimen.buttonHeightNormal),
        backgroundColor: AppColors.athensGray.withOpacity(.7),
        side: BorderSide(width: AppDimen.sizeButtonBorder, color: borderColor),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimen.sizeButtonCorner)),
      ),
      onPressed: onPressed,
      label: Text(
        label,
        style: labelStyle.copyWith(color: borderColor),
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double width;
  final Color borderColor;
  final TextStyle labelStyle;

  const OutlineButton(
    BuildContext context, {
    Key? key,
    required this.label,
    required this.onPressed,
    this.width = double.infinity,
    this.borderColor = AppColors.primaryColor,
    this.labelStyle = TextStyleExtension.smallRegularTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(width, AppDimen.buttonHeightSmall),
        side: BorderSide(width: AppDimen.sizeButtonBorder, color: borderColor),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimen.sizeButtonCorner)),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: labelStyle.copyWith(color: borderColor),
      ),
    );
  }
}

class MeltedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;

  const MeltedButton({Key? key, required this.onPressed, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed?.call();
      },
      child: Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(
          minWidth: double.infinity,
          minHeight: AppDimen.buttonHeightNormal,
        ),
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(AppDimen.sizeDialogCorner),
              bottomRight: Radius.circular(AppDimen.sizeDialogCorner)),
        ),
        child: Text(
          label,
          style: TextStyleExtension.normalMedTextStyle
              .copyWith(color: AppColors.romance),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


class DateTimeChip extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String label;
  final ChipThemeData theme;
  final ValueChanged<bool>? onSelect;

  const DateTimeChip({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.label,
    required this.onSelect,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 12.0),
      child: ChipTheme(
        data: theme,
        child: ChoiceChip(
          label: Text(label),
          selected: selectedIndex == index,
          onSelected: onSelect,
        ),
      ),
    );
  }
}
