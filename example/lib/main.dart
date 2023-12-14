import 'package:flutter/material.dart';
import 'package:responsive_wrap_container/responsive_wrap_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        //Theme
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),

        //Home
        home: const HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(

      body: ResponsiveContainer(

        // Max breakpoint width for the responsive container
        maxWidth: 600,
        // Specify a fixed height (Full Screen by default)
        height: 170,
        // Force wrap container's height around content
        wrapHeight: true,

        // Color of the main container (box holding your content)
        colorContainer: Colors.black,
        // Color for the responsive background (appears only when screen passes the maxWidth value)
        colorBackground: Colors.blueGrey,


        child: Text("This is Awesome!!!"),
      ),

    );
  }
}
