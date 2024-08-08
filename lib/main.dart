import 'package:counter_app1/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('Counter App'),centerTitle: true, backgroundColor: Colors.pinkAccent, ),

      body: Consumer<AppProvider>(
        builder: (context, provider, child) => ListView.builder(
          itemCount: provider.timelist.length,
          itemBuilder: (context, index) {
            final item = provider.timelist[index];
            return ListTile(
              title: Text(item),
            );

          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<AppProvider>().InCrement,
        child: Icon(Icons.add),
      ),
    ));
  }
}
