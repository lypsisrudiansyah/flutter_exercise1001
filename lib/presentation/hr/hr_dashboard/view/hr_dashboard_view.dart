
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../controller/hr_dashboard_controller.dart';

class HrDashboardView extends StatefulWidget {
    const HrDashboardView({Key? key}) : super(key: key);

    Widget build(context, HrDashboardController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("HrDashboard"),
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
    State<HrDashboardView> createState() => HrDashboardController();
}
    