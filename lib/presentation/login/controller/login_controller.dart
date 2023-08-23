import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
// import 'package:get/get.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;
  String email = "";
  String password = "";

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  Future doLogin() async {
    if (email == 'andre' || password == '123456') {
      // Get
      Get.to(const EmployeeDashboardView());
      return;
    } else if (email == 'melisa' || password == '123456') {
      Get.to(const HrDashboardView());
      return;
    } else {
      const GetSnackBar(
        title: 'Login Failed',
        message: 'Email or password is incorrect',
        backgroundColor: Colors.red,
      );
    }
  }
}
