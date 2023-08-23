
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../controller/hr_order_controller.dart';

class HrOrderView extends StatefulWidget {
    const HrOrderView({Key? key}) : super(key: key);

    Widget build(context, HrOrderController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("HrOrder"),
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
    State<HrOrderView> createState() => HrOrderController();
}
    