import 'package:dacha_makler/core/widgets/default_bottom_bar.dart';
import 'package:dacha_makler/core/widgets/rating.dart';
import 'package:dacha_makler/features/group/presentation/group_page.dart';
import 'package:dacha_makler/features/profile/presentation/pages/edit_page.dart';
import 'package:flutter/cupertino.dart';
import '../constans/imports.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

sealed class AppRoutes {
  AppRoutes._();
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return CupertinoPageRoute(builder: (context) => const OnBoardingPage());
      case Routes.home:
        return CupertinoPageRoute(builder: (context) => const HomePage());
      case Routes.splash:
        return CupertinoPageRoute(builder: (context) => const SplashPage());
      case Routes.listingDetailPage:
        return CupertinoPageRoute(
            builder: (context) => const ListingDetailPage());
      case Routes.profileDetail:
        return CupertinoPageRoute(builder: (context) => const ProfileDetail());
      case Routes.listingDetailPage:
        return CupertinoPageRoute(
            builder: (context) => const ListingDetailPage());
      case Routes.imageViewerPage:
        return CupertinoPageRoute(
            builder: (context) => const ImageViewerPage());
      case Routes.commentsPages:
        return CupertinoPageRoute(builder: (context) => const CommentsPage());
      case Routes.notificationPage:
        return CupertinoPageRoute(
            builder: (context) => const NotificationPage());
      case Routes.profilePage:
        return CupertinoPageRoute(builder: (context) => const ProfilePage());
      case Routes.chatPage:
        return CupertinoPageRoute(builder: (context) => const ChatPage());
      case Routes.editPage:
        return CupertinoPageRoute(builder: (context) => const EditPage());
      case Routes.groupPage:
        return CupertinoPageRoute(builder: (context) => const GroupPage());
      case Routes.rating:
        return CupertinoPageRoute(builder: (context) => const Rating());
      case Routes.defaultBottomBar:
        return CupertinoPageRoute(
            builder: (context) => const DefaultBottomBar());
      case Routes.filter:
        final city = settings.arguments as String? ?? 'Unknown';
        return CupertinoPageRoute(builder: (context) => FilterPage(city: city));
      default:
        return null;
    }
  }
}
