import 'package:agora_demo/constants/app_colors.dart';
import 'package:agora_demo/constants/app_dimen.dart';
import 'package:agora_demo/ui/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/assets_path.dart';
import '../../ui/ui_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _passwordTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _passwordTextController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // Set the gradient background for the body
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.heliotrope, AppColors.primaryColor],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppDimen.spacingLarge),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(AppDimen.sizeLargeCardCorner))),
                      padding: const EdgeInsets.all(AppDimen.spacingHuge),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sign in",
                            style: TextStyleExtension.jumboSemiBoldTextStyle,
                          ),
                          const SizedBox(
                            height: AppDimen.spacingJumbo,
                          ),
                          Text(
                            "Email",
                            style: TextStyleExtension.hintLabelStyles,
                          ),
                          const SizedBox(
                            height: AppDimen.spacingMedPlus,
                          ),
                          _buildEmailInput(),
                          const SizedBox(
                            height: AppDimen.spacingLarge,
                          ),
                          Text(
                            "Password",
                            style: TextStyleExtension.hintLabelStyles,
                          ),
                          const SizedBox(
                            height: AppDimen.spacingMedPlus,
                          ),
                          _buildPasswordInput(),
                          const SizedBox(
                            height: AppDimen.spacingJumboPlus,
                          ),
                          PrimaryButton(
                            context,
                            label: "SIGN IN",
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: AppDimen.spacingJumbo,
                          ),
                          const Center(
                            child: Text(
                              "Forgot your password?",
                              style: TextStyleExtension.normalTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimen.spacingMedSmall),
                      child: Container(
                          decoration: const BoxDecoration(
                              color: AppColors.lightGray,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                      AppDimen.sizeLargeCardCorner),
                                  bottomRight: Radius.circular(
                                      AppDimen.sizeLargeCardCorner))),
                          padding: const EdgeInsets.all(AppDimen.spacingLarge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account? ",
                                  style: TextStyleExtension.normalTextStyle
                                      .copyWith(color: AppColors.gray)),
                              const Text("Sign up",
                                  style: TextStyleExtension.normalTextStyle)
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: AppDimen.spacingJumboPlus,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          Assets.facebookIcon,
                          width: AppDimen.sizeLargeIcon,
                        ),
                        SvgPicture.asset(
                          Assets.twitterIcon,
                          width: AppDimen.sizeLargeIcon,
                        ),
                        SvgPicture.asset(
                          Assets.googlePlusIcon,
                          width: AppDimen.sizeLargeIcon,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  Widget _buildEmailInput() {
    return TextFormField(
      decoration: WidgetStyleExtension.filledInputDecoration,
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _buildPasswordInput() {
    return AppPasswordField(
      controller: _passwordTextController,
    );
  }

  @override
  void dispose() {
    _passwordTextController.dispose();
    super.dispose();
  }
}
