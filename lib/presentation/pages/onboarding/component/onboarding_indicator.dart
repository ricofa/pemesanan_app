import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pemesananapp/config/config.dart';
import 'package:pemesananapp/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:pemesananapp/presentation/pages/onboarding/onboarding_state.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              cubit.state.onboardingList.length,
              (index) => index == cubit.state.currentIndex
                  ? _activeIndicator(index)
                  : _inactiveIndicator(index)),
        );
      },
    );
  }

  Widget _activeIndicator(int index) {
    return Container(
      width: 16,
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
      decoration: BoxDecoration(
        color: ThemeColor.acnLightPink,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _inactiveIndicator(int index) {
    return Container(
      width: 6,
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
      decoration: BoxDecoration(
        color: ThemeColor.inkGrey3,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
