import 'package:flutter/material.dart'; // 이걸 import 해놔야 stateless widget을 쓸 수 있군

// stless -> 이걸 치면, 자동으로 위젯이 만들어 진답니다
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // constructor도 만들어 주는군

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea( // 시스템의 영역(상태바, 홈버튼 등)을 벗어나면서 코딩할 수 있게 해줌
          // 'ctrl + 마우스 왼쪽 클릭'으로 할 수 있는 '정의로 가기'를 이용해서, 어떤 parameter를 조작할 수 있는지 확인했어요
          bottom: false,
          child: Container( // 컨테이너, 말 그대로, 위젯들을 넣는 역할을 해요.. 형태는 child widget를 따라감
            color: Colors.black,
            // child: Column(
            child: Row(
              // MainAxisAlignment - 주축 정렬
              // start - 시작
              // end - 끝
              // center - 가운데
              // spaceBetween - 위젯과 위젯 사이 공간이 동일하게 배치
              // spaceEvenly - spaceBetween과 같이 위젯을 같은 간격으로 배치하지만, 끝과 끝이, 여백으로 시작(위젯이 아니라)
              // spaceAround - spaceEvenly + 끝과 끝의 간격은 1/2
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
                Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
                Container(
                  color: Colors.yellow,
                  width: 50.0,
                  height: 50.0,
                ),
                Container(
                  color: Colors.green,
                  width: 50.0,
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
