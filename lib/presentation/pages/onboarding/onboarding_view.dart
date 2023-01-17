import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pemesananapp/presentation/pages/onboarding/component/component.dart';
import 'package:pemesananapp/utils/extension/sized_extension.dart';

import 'onboarding_cubit.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnboardingCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
        child: Column(
            children: [
              const OnboardingImage(),
              32.0.height,
              const OnboardingTitle(),
              45.0.height,
              const OnboardingIndicator(),
              53.0.height,
              const OnboardingButton(),
              83.0.height
            ],
          ),

      ),
    );
  }
}


