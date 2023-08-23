
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../controller/employee_profile_controller.dart';

class EmployeeProfileView extends StatefulWidget {
    const EmployeeProfileView({Key? key}) : super(key: key);

    Widget build(context, EmployeeProfileController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("EmployeeProfile"),
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
    State<EmployeeProfileView> createState() => EmployeeProfileController();
}
    