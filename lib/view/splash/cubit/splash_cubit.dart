import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../core/constants/navigation/navigation_constants.dart';
import '../../../core/init/navigation/navigation_service.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial()) {
    _init();
  }

  Future<void> _init() async {
    //SplashService.instance.serviceInit();
    await Future.delayed(const Duration(milliseconds: 2000));
    await NavigationService.instance
        .navigateToPageClear(path: NavigationConstants.HOME);
    emit(SplashLoadSuccess());
  }
}
