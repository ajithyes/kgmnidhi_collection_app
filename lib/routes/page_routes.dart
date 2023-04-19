import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart'
    as transitions_type;
import 'package:kgm_nidhi/pages/home_page/screen/home_page_screen.dart';
import 'package:kgm_nidhi/pages/login/screen/login_screen.dart';
import 'package:kgm_nidhi/pages/payment/screen/payment_screen.dart';
import 'package:kgm_nidhi/pages/splash_screen/splash_screen.dart';
import 'package:kgm_nidhi/pages/transaction/screen/transaction_screen.dart';

class PageRoutes {
  static const initialPage = "/";
  static const homePage = "/homePage";
  static const transaction = "/transaction";
  static const login = "/login";
  static const paymentForm = "/paymentForm";
}

const navigationTransition = transitions_type.Transition.fadeIn;
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Routes {
  static final routes = [
    GetPage(
      name: PageRoutes.initialPage,
      page: () => const SplashScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.login,
      page: () =>  LoginScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.transaction,
      page: () => const TransactionScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.homePage,
      page: () =>  HomePageScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.paymentForm,
      page: () =>  PaymentScreen(),
      transition: navigationTransition,
    ),
  ];
}
