import 'package:flutter/material.dart';

import '../screens/chat.dart';
import '../screens/loading.dart';
import '../screens/login.dart';
import '../screens/register.dart';
import '../screens/users.dart';

Map<String, Widget Function(BuildContext)> appScreens = {
  'user': ( _ ) => const UsersScreen(),
  'chat': ( _ ) => const ChatScreen(),
  'login': ( _ ) => const LoginScreen(),
  'register': ( _ ) => const RegisterScreen(),
  'loading': ( _ ) => const LoadingScreen(),
};
