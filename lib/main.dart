import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_application_1/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_application_1/features/auth/domain/usecases/get_profile_usecase.dart';
import 'package:flutter_application_1/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:flutter_application_1/features/auth/presentation/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'routes/app_router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<AuthRemoteDataSource>(
          create: (_) => AuthRemoteDataSource(),
        ),
        Provider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(
            context.read<AuthRemoteDataSource>(),
          ),
        ),
        Provider<SignInUseCase>(
          create: (context) => SignInUseCase(
            context.read<AuthRepository>(),
          ),
        ),
        Provider<GetProfileUseCase>(
          create: (context) => GetProfileUseCase(
            context.read<AuthRepository>(),
          ),
        ),
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(
            signInUseCase: context.read<SignInUseCase>(),
            getProfileUseCase: context.read<GetProfileUseCase>(),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
