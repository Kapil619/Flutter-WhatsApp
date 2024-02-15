import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp/features/auth/repository/auth_repository.dart';

final authControllerProvider = Provider(
  (ref) {
    final authRepository = ref.watch(authRepositoryProvider);
    return AuthController(authRepository: authRepository);
  },
);

class AuthController {
  final AuthRepository authRepository;
  AuthController({required this.authRepository});

  void signInWithPhone(String phoneNumber, BuildContext context) {
    authRepository.signInWithPhone(context, phoneNumber);
  }
}
