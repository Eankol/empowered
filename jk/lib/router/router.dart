//import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../home.dart';
import '../pages/article.dart';

//路由配置；
Map routes = {
  '/': (context) => home(),
  '/article': (contxt, {arguments}) => article(arguments: arguments),
};

//配置onGenerateRoute  固定写法  这个方法也相当于一个中间件，这里可以做权限判断
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          CupertinoPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
