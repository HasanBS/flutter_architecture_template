import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/lottie/lottie_widget.dart';
import '../../../core/constants/image/image_constatns.dart';
import '../../../core/extension/context_extension.dart';
import '../cubit/splash_cubit.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SplashCubit(),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            return _buildScaffoldBody(context);
          },
        ));
  }

  Scaffold _buildScaffoldBody(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          _buildAnimatedLottie(context),
        ],
      ),
    ));
  }

  Widget _buildAnimatedLottie(BuildContext context) {
    return AnimatedAlign(
      alignment: Alignment.center,
      duration: context.durationSlow,
      child: LottieWidget(
        path: context.isDarkTheme
            ? ImageConstants.instance.lottieDark
            : ImageConstants.instance.lottie,
        repeat: false,
      ),
    );
  }
}
