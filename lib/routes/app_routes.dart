import 'package:flutter/material.dart';
import '../presentation/newtours_page_screen/newtours_page_screen.dart';
import '../presentation/pasttours_page_screen/pasttours_page_screen.dart';
import '../presentation/wish_list_screen/wish_list_screen.dart';
import '../presentation/stories_page_screen/stories_page_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String newtoursPageScreen = '/newtours_page_screen';

  static const String pasttoursPageScreen = '/pasttours_page_screen';

  static const String wishListScreen = '/wish_list_screen';

  static const String storiesPageScreen = '/stories_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        newtoursPageScreen: NewtoursPageScreen.builder,
        pasttoursPageScreen: PasttoursPageScreen.builder,
        wishListScreen: WishListScreen.builder,
        storiesPageScreen: StoriesPageScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: NewtoursPageScreen.builder
      };
}
