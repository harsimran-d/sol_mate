import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/pages.dart';
part 'routes.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/landing',
    routes: [
      GoRoute(
        name: AppRoutes.landing.name,
        path: '/landing',
        builder: (context, state) => const LandingPage(),
      ),
    ],
  );
});
