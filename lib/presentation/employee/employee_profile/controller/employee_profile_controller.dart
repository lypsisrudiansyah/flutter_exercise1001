
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../view/employee_profile_view.dart';

class EmployeeProfileController extends State<EmployeeProfileView> {
    static late EmployeeProfileController instance;
    late EmployeeProfileView view;

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
        
    