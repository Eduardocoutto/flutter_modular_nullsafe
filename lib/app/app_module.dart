import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:noweb/app/app_widget.dart';
import 'package:noweb/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  final List<Bind> binds = [
    $AppController,
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];

  @override
  final Widget bootstrap = AppWidget();
}
