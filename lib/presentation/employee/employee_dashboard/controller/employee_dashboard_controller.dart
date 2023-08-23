
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../view/employee_dashboard_view.dart';

class EmployeeDashboardController extends State<EmployeeDashboardView> {
    static late EmployeeDashboardController instance;
    late EmployeeDashboardView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    