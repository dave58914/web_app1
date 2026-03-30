import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello World & Codeium',
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(height: 20), // 設定文字與按鈕之間的間距
              ElevatedButton(
                onPressed: () {
                  // 這裡編寫點擊按鈕後要執行的動作
                  debugPrint('按鈕被點擊了！');
                },
                child: const Text('點擊我'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
