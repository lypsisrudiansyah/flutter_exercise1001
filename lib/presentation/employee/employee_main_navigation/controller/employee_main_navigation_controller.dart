
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../view/employee_main_navigation_view.dart';

class EmployeeMainNavigationController extends State<EmployeeMainNavigationView> {
    static late EmployeeMainNavigationController instance;
    late EmployeeMainNavigationView view;

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
        
    