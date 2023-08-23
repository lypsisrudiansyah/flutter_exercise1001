
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../view/hr_dashboard_view.dart';

class HrDashboardController extends State<HrDashboardView> {
    static late HrDashboardController instance;
    late HrDashboardView view;

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
        
    