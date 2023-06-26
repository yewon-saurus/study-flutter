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
            width: MediaQuery.of(context).size.width, // 이걸 이렇게 하면 size를 가져올 수 있구나~ 거기서 width나 heigth를 가져올 수 있구나~
            // child: Column(
            child: Column(
              // MainAxisAlignment - 주축 정렬
              // start - 시작
              // end - 끝
              // center - 가운데
              // spaceBetween - 위젯과 위젯 사이 공간이 동일하게 배치
              // spaceEvenly - spaceBetween과 같이 위젯을 같은 간격으로 배치하지만, 끝과 끝이, 여백으로 시작(위젯이 아니라)
              // spaceAround - spaceEvenly + 끝과 끝의 간격은 1/2
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              // CrossAxisAligment - 반대축 정렬
              // row 일 때는 세로, column 일 때는 가로~ 반대로 생각하면 편하겠죠?
              // 주축에서는, 남는 공간을, 차지 할 수 있는 최대한을 차지한다?
              // 근데 주축이 아닌.. 반대 축은, 위젯의 사이즈, 즉 최소한의 사이즈만 기본적으로 차지를 한다.

              // baseline은 글자를 정렬할 때, 글자의 밑부분을 정렬하는건데.. (알아서 사용 하시고)
              // crossAxisAlignment: CrossAxisAlignment.center, // 기본값 인듯
              crossAxisAlignment: CrossAxisAlignment.stretch, // 좍좍 늘림.. 헐! 50씩만 차지하라고 했는데 최대한으로 늘어남
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
