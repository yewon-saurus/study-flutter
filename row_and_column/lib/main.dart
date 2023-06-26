import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(), // 아래처럼, 위젯을 만들어 놔야 이렇게 불러서 띄워줄 수 있나 보군요
      // 근데 이제, 이렇게 아래에 둘 게 아니라, 하나의 파일로 따로 분류를 할게요
    )
  );
}

// 위젯! 손으로 생성하지 말아요.. 단축어가 있어요
// stless -> 이걸 치면, 자동으로 위젯이 만들어 진답니다
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // constructor도 만들어 주는군

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home Screen'),
      )
    );
  }
}
