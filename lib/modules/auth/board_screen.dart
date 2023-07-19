import 'package:agora_demo/constants/app_colors.dart';
import 'package:agora_demo/constants/app_dimen.dart';
import 'package:agora_demo/constants/assets_path.dart';
import 'package:agora_demo/ui/app_styles.dart';
import 'package:agora_demo/ui/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BoardPage();
  }
}

class BoardPage extends StatefulWidget {
  const BoardPage({Key? key}) : super(key: key);

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Image.asset(
              Assets.firstBoard, height: double.infinity,
              fit: BoxFit.cover, // Scale the image to cover the entire space
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black
                  .withOpacity(0.5), // Adjust opacity to control the darkness
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimen.spacingJumbo,
                vertical: AppDimen.spacingLarge),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: AppDimen.spacingLarger,
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                    color: AppColors.white,
                  ),
                ),
                SvgPicture.asset(Assets.logoIcon),
                const SizedBox(
                  height: AppDimen.spacingLarger,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // Align column content to the bottom
                      children: [
                        Text(
                          "Sign in to use all feature",
                          style: TextStyleExtension.medPlusRegularTextStyle
                              .copyWith(color: AppColors.white),
                        ),
                        const SizedBox(
                          height: AppDimen.spacingLarge,
                        ),
                        IconPrimaryButton(
                          context,
                          label: "Sign in with Apple",
                          onPressed: () {},
                          iconPath: Assets.appleIcon,
                          backgroundColor: AppColors.white,
                          borderColor: AppColors.white,
                          labelColor: Colors.black,
                          assetRadius: AppDimen.sizeMediumIcon,
                        ),
                        const SizedBox(
                          height: AppDimen.spacingLarge,
                        ),
                        IconPrimaryButton(
                          context,
                          label: "Sign in with Email",
                          onPressed: () {},
                          iconPath: Assets.emailIcon,
                          assetRadius: AppDimen.sizeMediumIcon,
                        ),
                        const SizedBox(
                          height: AppDimen.spacingLarge,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              Assets.googleIcon,
                              width: AppDimen.sizeMedSmallIcon,
                              color: AppColors.white,
                            ),
                            SvgPicture.asset(
                              Assets.telegramIcon,
                              width: AppDimen.sizeMedSmallIcon,
                              color: AppColors.white,
                            ),
                            SvgPicture.asset(
                              Assets.phoneIcon,
                              width: AppDimen.sizeMedSmallIcon,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppDimen.spacingLarger,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(Assets.checkIcon),
                            Expanded(
                              child: Text(
                                "By Logging in you agree to our Terms of use & Privacy Policy",
                                style: TextStyleExtension.medRegularTextStyle
                                    .copyWith(color: AppColors.white),
                                maxLines: 3,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
