import 'package:bootcamp_project_completed/screens/home/bloc/home_screen_event.dart';
import 'package:bootcamp_project_completed/screens/home/bloc/home_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc()
      : super(
          // initial state
          HomeScreenState(0, false),
        ) {
    on<HomeScreenTabPressed>(
      (event, emit) {
        emit(
          HomeScreenState(
            event.index,
            state.isDarkMode,
          ),
        );
      },
    );

    on<HomeScreenThemeChanged>(
      (event, emit) {
        emit(
          HomeScreenState(
            state.tabIndex,
            !state.isDarkMode,
          ),
        );
      },
    );
  }
}
