import 'package:cakeshop_fe/presentation/pages/community/community_screen.dart';
import 'package:cakeshop_fe/presentation/pages/home/home_screen.dart';
import 'package:cakeshop_fe/presentation/pages/map/map_screen.dart';
import 'package:cakeshop_fe/presentation/pages/my_page/my_screen.dart';
import 'package:cakeshop_fe/presentation/pages/root/root_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');


final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/map',
  debugLogDiagnostics: true,
  routes: <RouteBase>[
   StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
    return RootPage(navigationShell);},
    branches: [
      StatefulShellBranch(
        routes: <RouteBase>[
          GoRoute(
            path: "/community",
            builder: (context, state) => const CommunityScreen(),), 
        ]),
      
        
        StatefulShellBranch(
        routes: <RouteBase>[
          GoRoute(
            path: "/home",
            builder: (context, state) => const HomeScreen(),), 
        ]),
        StatefulShellBranch(
        navigatorKey: _shellNavigatorKey,
        routes: <RouteBase>[
          GoRoute(
            path: "/map",
            builder: (context, state) => const MapScreen(),), 
        ]),
        
        StatefulShellBranch(
        routes: <RouteBase>[
          GoRoute(
            path: "/my",
            builder: (context, state) => const MyPageScreen(),), 
        ]),
      ]
    )
  ],
);
