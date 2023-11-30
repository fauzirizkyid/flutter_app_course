import 'package:flutter/material.dart';
import 'package:flutter_app/core/components/action_text.dart';
import 'package:flutter_app/core/config/theme/core/fonts/text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        textTheme: myTextTheme,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('App Bar'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                ActionText(
                  label: "Label 1",
                  onTap: () {},
                ),
                ActionText(
                  label: "Label 2",
                  description: "Deskripsi Singkat",
                  onTap: () {},
                ),
                ActionText(
                  label: "Label 2",
                  description: "Deskripsi Singkat 2",
                  onTap: () {},
                ),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 4 / 2,
              ),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      const Icon(Icons.car_rental),
                      Text('Car $index'),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
