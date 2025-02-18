import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project/screens/home_admin.dart';
import 'package:project/screens/home_student.dart';
import 'package:project/screens/home_teacher.dart';

import '../screens/signup_screen.dart';
import '../screens/home_student.dart';
import '../screens/home_teacher.dart';
import '../screens/home_admin.dart';
import '../providers/auth_provider.dart';
import '../screens/login_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>  SignupScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) =>  LoginScreen(),
      ),
      GoRoute(
        path: '/student_home',
        builder: (context, state) => HomeStudent(),
      ),
      GoRoute(
        path: '/teacher_home',
        builder: (context, state) => HomeTeacher(),
      ),
      GoRoute(
        path: '/admin_home',
        builder: (context, state) => HomeAdmin(),
      ),
    ],
  );
});
