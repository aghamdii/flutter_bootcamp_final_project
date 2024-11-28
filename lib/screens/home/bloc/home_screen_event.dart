abstract class HomeScreenEvent {}

// Might be Tab1 -> Tasks, or Tab2 -> Settings
class HomeScreenTabPressed extends HomeScreenEvent {
  HomeScreenTabPressed(
    this.index,
  );

  final int index;
}

// Toggle the existed value
class HomeScreenThemeChanged extends HomeScreenEvent {}
