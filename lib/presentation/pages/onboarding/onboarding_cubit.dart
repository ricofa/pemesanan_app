import 'package:bloc/bloc.dart';

import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState().init());

  void next(){
    if (state.currentIndex < state.onboardingList.length -1) {
      emit(state.clone()..currentIndex = state.currentIndex +1);
    }
    // else if (state.currentIndex == state.onboardingList.length - 1){
    //   skip();
    // }
  }

  void prev(){
    if(state.currentIndex > 0){
      emit(state.clone()..currentIndex = state.currentIndex -1);
    }
  }

  void swiping(int index){
    if(index >= 0 && index < state.onboardingList.length){
      emit(state.clone()..currentIndex = index);
    }
  }

  void skip(){
    //ToDo
  }
}
