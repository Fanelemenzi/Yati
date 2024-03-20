import 'package:flutter/material.dart';


class NavivagationBar extends StatelessWidget {
  const NavivagationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home")
        ]),
    );
  }
}