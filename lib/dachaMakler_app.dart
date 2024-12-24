import 'package:dacha_makler/constans/imports.dart';

class DachamaklerApp extends StatelessWidget {
  const DachamaklerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvader()),
        // ChangeNotifierProvider(create: (_) => CategoriesProvider()),
        // ChangeNotifierProvider(create: (_) => HomeProvider()),
        // ChangeNotifierProvider(create: (_) => GroupProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dacha Makler',
        // theme: AppTheme.lightTheme,
        initialRoute: Routes.splash,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        navigatorKey: rootNavigatorKey,
      ),
    );
  }
}
