import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
    print("Email: $email Password: $password");
    if (email == 'andre' && password == '123456') {
      Get.to(const EmployeeDashboardView());
      return;
    } else if (email == 'melisa' && password == '123456') {
      Get.to(const HrDashboardView());
      return;
    } else {
      // create popup showing with text
      // "Email or password is incorrect" using vanilla code from flutter
      print("Email or password is incorrect");
      Fluttertoast.showToast(
          msg: "Email or password is incorrect",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
