
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../view/hr_profile_view.dart';

class HrProfileController extends State<HrProfileView> {
    static late HrProfileController instance;
    late HrProfileView view;

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
        
    