
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../controller/hr_profile_controller.dart';

class HrProfileView extends StatefulWidget {
    const HrProfileView({Key? key}) : super(key: key);

    Widget build(context, HrProfileController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("HrProfile"),
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
    State<HrProfileView> createState() => HrProfileController();
}
    