import 'package:cpoy_x_app/secctions/appbar_section.dart';
import 'package:cpoy_x_app/secctions/body_section.dart';
import 'package:cpoy_x_app/secctions/buttonsappbar_section.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppBarComp(),
          BodySection(),
          ButtonsappbarSection()
        ],
      ),
    );
  }
}