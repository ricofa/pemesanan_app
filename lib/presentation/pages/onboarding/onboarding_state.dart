import 'package:pemesananapp/data/model/onboarding/onboarding_model.dart';
import 'package:pemesananapp/data/src/string_img.dart';

class OnboardingState {
  final List<OnBoardingModel> onboardingList =[
    OnBoardingModel(
      title: 'Find a Roomie!',
      desc:
      'We\'ve helped millions across the nation find their perfect match... and you\'re next!',
      image: StringImg.standing,
    ),
    OnBoardingModel(
      title: 'Your Roommate Finder',
      desc:
      'Hey you, looking for a roommate? We\'ve helped millions across the nation find their perfect match... and you\'re next!',
      image: StringImg.standing2,
    ),
    OnBoardingModel(
      title: 'Find Your Match!',
      desc:
      'We\'ve helped millions across the nation find their perfect match... and you\'re next!',
      image: StringImg.standing1,
    ),
  ];

  int currentIndex = 0;

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }
}
