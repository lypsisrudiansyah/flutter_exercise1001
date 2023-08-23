
import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../view/hr_order_view.dart';

class HrOrderController extends State<HrOrderView> {
    static late HrOrderController instance;
    late HrOrderView view;

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
        
    