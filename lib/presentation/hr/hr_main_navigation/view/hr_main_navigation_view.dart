
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../controller/hr_main_navigation_controller.dart';

class HrMainNavigationView extends StatefulWidget {
    const HrMainNavigationView({Key? key}) : super(key: key);

    Widget build(context, HrMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("HrMainNavigation"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<HrMainNavigationView> createState() => HrMainNavigationController();
}
    