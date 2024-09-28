import 'package:cv/Provider/tap_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cv/Views/Homepage.dart';
import 'package:cv/Widgets/Cursor/Animated_circle_cursar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => TabDataProvider(),
      )
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'PortFolio',
          home: AnimatedCircleCursor(
            child: homepage(),
          ),
        );
      },
    );
  }
}
