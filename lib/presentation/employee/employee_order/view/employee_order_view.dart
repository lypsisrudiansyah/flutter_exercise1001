
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../controller/employee_order_controller.dart';

class EmployeeOrderView extends StatefulWidget {
    const EmployeeOrderView({Key? key}) : super(key: key);

    Widget build(context, EmployeeOrderController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("EmployeeOrder"),
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
    State<EmployeeOrderView> createState() => EmployeeOrderController();
}
    