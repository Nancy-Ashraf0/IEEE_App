import 'package:flutter/material.dart';

import '../../features/committes/presentation/screens/committee_details_screen.dart';
import '../../features/committes/presentation/screens/committees_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this arguments is to be passed in any screen like this ( argument as ClassName )
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboardinScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routes.committeesScreen:
        return MaterialPageRoute(builder: (_) => CommitteesScreen());
      case Routes.committeeDetailsScreen:
        return MaterialPageRoute(
          builder: (_) {
            final args = arguments as Map<String, dynamic>;
            return CommitteeDetailsScreen(
            );
          },
        );
      default:
        return null;
    }
  }
}
