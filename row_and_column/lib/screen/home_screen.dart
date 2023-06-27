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
            // width: MediaQuery.of(context).size.width, // 이걸 이렇게 하면 size를 가져올 수 있구나~ 거기서 width나 heigth를 가져올 수 있구나~
            // Row와 Column을 조합해서 복잡한 레이아웃을 만들 수 있다!.. 부모 자식 부모 자식 이렇게 겹쳐서요
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.green,
                    ),
                  ],
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.orange,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.green,
                    ),
                  ],
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
