import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sunat_app/core/constants/colors.dart';
import 'package:sunat_app/view/screens/screens.dart';
import 'package:sunat_app/view_model/view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = Provider.of<HomeViewController>(context).currentIndex;

    const screens = [
      ProductScreen(),
      ClientScreen(),
      InvoiceScreen(),
    ];

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeViewController>(context);

    return FlashyTabBar(
      showElevation: false,
      animationCurve: Curves.easeInBack,
      onItemSelected: (index) {
        controller.currentIndex = index;
      },
      selectedIndex: controller.currentIndex,
      items: [
        FlashyTabBarItem(
            icon: const Icon(FontAwesomeIcons.productHunt, size: 20),
            title: const Text('Productos'),
            activeColor: primaryColor),
        FlashyTabBarItem(
            icon: const Icon(FontAwesomeIcons.users, size: 20),
            title: const Text('Clientes'),
            activeColor: primaryColor),
        FlashyTabBarItem(
            icon: const Icon(FontAwesomeIcons.fileInvoice, size: 20),
            title: const Text('Boletas'),
            activeColor: primaryColor),
      ],
    );
  }
}
