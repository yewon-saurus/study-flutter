import 'package:flutter/material.dart';
import 'package:row_and_column/screen/home_screen.dart'; // import 하는 건, 무조건 lib 폴더 위치를 기준으로 import 하게 된다
// 근데 알죠? alt + enter 쓰면 멋진 제안들이 뜬다는 것을..

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(), // 하나의 파일로 따로 분류를 할게요
    )
  );
}