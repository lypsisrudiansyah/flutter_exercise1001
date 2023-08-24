// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'dart:io';

import 'package:flutter_basic_widget_exercise/user.dart';

void main() async {
  if (fullName.isEmpty || email.isEmpty || whatsapp.isEmpty) {
    print("----------------");
    print("Wajib mengisi data!");
    print("Buka lib/user.dart");
    print("----------------");
    return;
  }

  List<String> modules = [
    "lib\\presentation\\login\\view\\login_view.dart",
    "lib\\presentation\\login\\controller\\login_controller.dart",
    "lib\\presentation\\hr\\hr_main_navigation\\view\\hr_main_navigation_view.dart",
    "lib\\presentation\\hr\\hr_main_navigation\\controller\\hr_main_navigation_controller.dart",
    "lib\\presentation\\hr\\hr_dashboard\\view\\hr_dashboard_view.dart",
    "lib\\presentation\\hr\\hr_dashboard\\controller\\hr_dashboard_controller.dart",
    "lib\\presentation\\hr\\hr_order\\view\\hr_order_view.dart",
    "lib\\presentation\\hr\\hr_order\\controller\\hr_order_controller.dart",
    "lib\\presentation\\hr\\hr_profile\\view\\hr_profile_view.dart",
    "lib\\presentation\\hr\\hr_profile\\controller\\hr_profile_controller.dart",
    "lib\\presentation\\employee\\employee_main_navigation\\view\\employee_main_navigation_view.dart",
    "lib\\presentation\\employee\\employee_main_navigation\\controller\\employee_main_navigation_controller.dart",
    "lib\\presentation\\employee\\employee_dashboard\\view\\employee_dashboard_view.dart",
    "lib\\presentation\\employee\\employee_dashboard\\controller\\employee_dashboard_controller.dart",
    "lib\\presentation\\employee\\employee_order\\view\\employee_order_view.dart",
    "lib\\presentation\\employee\\employee_order\\controller\\employee_order_controller.dart",
    "lib\\presentation\\employee\\employee_profile\\view\\employee_profile_view.dart",
    "lib\\presentation\\employee\\employee_profile\\controller\\employee_profile_controller.dart",
  ];

  int point = 0;
  for (var m in modules) {
    if (File(m.fix).existsSync()) {
      point++;
    } else {
      print("${m.fix} doesn't exists!");
    }
  }

  var loginController = File("lib\\presentation\\login\\controller\\login_controller.dart".fix);

  if (loginController.existsSync()) {
    var controllerContent = loginController.readAsStringSync();

    if (controllerContent.contains("String email")) {
      print('str email correct');
      point += 3;
    }
    if (controllerContent.contains("String password")) {
      point += 3;
    }

    if (controllerContent.contains("doLogin() async {")) {
      point += 10;
    }

    if (controllerContent.contains("EmployeeDashboardView")) {
      point += 5;
    }

    if (controllerContent.contains("HrDashboardView()")) {
      point += 5;
    }
  }
  var loginView = File("lib\\presentation\\login\\view\\login_view.dart".fix);
  if (loginView.existsSync()) {
    var loginViewContent = loginView.readAsStringSync();
    if (loginViewContent.contains("controller.doLogin()")) {
      point += 5;
    }

    if (loginViewContent.contains("controller.email = value;")) {
      point += 5;
    }

    if (loginViewContent.contains("controller.password = value;")) {
      point += 5;
    }
  }

  print("POINT: $point");

  await Dio().post(
    "https://capekngoding.com/magicbook/api/scores",
    options: Options(
      headers: {
        "Content-Type": "application/json",
      },
    ),
    data: {
      "name": fullName,
      "email": email,
      "whatsapp": whatsapp,
      "point": point,
      "chapter": "Chapter 1001",
    },
  );
}

extension StringExtension on String {
  String get fix {
    String mode = Directory.current.path;
    String separator = "/";
    if (mode.contains("\\")) {
      separator = "\\";
    }

    var path = this;
    path = path.replaceAll('//', "(slash)");
    path = path.replaceAll('\\', "(slash)");
    path = path.replaceAll("/", "(slash)");
    path = path.replaceAll("(slash)(slash)", "(slash)");
    path = path.replaceAll("(slash)", separator);
    return path;
  }
}
