import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../view/login_view.dart';

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

  Future doLogin() {
    
  }
}
