import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}
// stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // 버전
    var version = 'V 1.0.0';
    // 공식 색
    var duBlue = Color(0xff004d94);
    // 버튼 이미지
    final List<Map<String, String>> buttonData = [
      {'icon': 'assets/images/fan.svg', 'label': 'FAN TEST'},
      {'icon': 'assets/images/valve.svg', 'label': 'SOL TEST'},
      {'icon': 'assets/images/setting.svg', 'label': 'SETTING'},
      {'icon': 'assets/images/state.svg', 'label': 'STATE'},
      {'icon': 'assets/images/chat_info.svg', 'label': 'INFO'},
    ];

    return MaterialApp(
      title: 'DuClean',
      theme: ThemeData(
        fontFamily: 'Pretendard',
      ),
      home: Scaffold(
        backgroundColor: Color(0xfff6f6f6),
        // 상단 바
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo_white.png', width: 100),
              Padding(
                padding: const EdgeInsets.only(top:6),
                child: Text(version, style: TextStyle(color: Colors.white, fontSize: 13),),
              )
            ],
          ),
          backgroundColor: duBlue,
        ),
        // 몸체
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0), // 화면 전체에 여백을 줍니다.
            child: Wrap(
              spacing: 16.0,      // 버튼 사이의 가로 간격
              runSpacing: 16.0,   // 버튼 사이의 세로 간격
              alignment: WrapAlignment.center, // 가운데 정렬

              children: [
                // 1. START 버튼
                SizedBox(
                  width: 200,
                  height: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: duBlue,
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text('START'),
                  ),
                ),

                // 2. 나머지 아이콘 버튼들
                ...buttonData.map((data) {
                  return SizedBox(
                    width: 200,
                    height: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: duBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            data['icon']!,
                            width: 55,
                          ),
                          const SizedBox(height: 8),
                          Text(data['label']!),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 10,
          color: duBlue,
        )
      )
    );
  }
}

