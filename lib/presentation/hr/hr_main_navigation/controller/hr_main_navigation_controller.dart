
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../view/hr_main_navigation_view.dart';

class HrMainNavigationController extends State<HrMainNavigationView> {
    static late HrMainNavigationController instance;
    late HrMainNavigationView view;

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
        
    