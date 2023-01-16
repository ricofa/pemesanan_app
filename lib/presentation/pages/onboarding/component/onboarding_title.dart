import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pemesananapp/config/config.dart';
import 'package:pemesananapp/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:pemesananapp/presentation/pages/onboarding/onboarding_state.dart';
import 'package:pemesananapp/utils/extension/extension.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              cubit.state.onboardingList[cubit.state.currentIndex].title ?? "",
              style: ThemeFont.display3,
              textAlign: TextAlign.center,
            ),
            8.0.height,
            Text(
              cubit.state.onboardingList[cubit.state.currentIndex].desc ?? "",
              style: ThemeFont.paragraphMedium,
              textAlign: TextAlign.center,
            )
          ],
        );
      },
    );
  }
}
