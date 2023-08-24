
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../controller/employee_main_navigation_controller.dart';

class EmployeeMainNavigationView extends StatefulWidget {
    const EmployeeMainNavigationView({Key? key}) : super(key: key);

    Widget build(context, EmployeeMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("EmployeeMainNavigation"),
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
    State<EmployeeMainNavigationView> createState() => EmployeeMainNavigationController();
}
    