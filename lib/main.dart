import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Web App 測試')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello World & Codeium', style: TextStyle(fontSize: 32)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                debugPrint('按鈕被點擊了！'); // 仍會在 F12 Console 顯示
                // 在畫面上顯示 SnackBar
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('按鈕被點擊了！')));
              },
              child: const Text('點擊我啦～'),
            ),
          ],
        ),
      ),
    );
  }
}
