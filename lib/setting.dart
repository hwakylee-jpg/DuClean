import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 버전
    var version = 'V 1.0.0';
    // 공식 색
    var duBlue = Color(0xff004d94);

    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo_white.png', width: 100),
              Padding(
                padding: const EdgeInsets.only(top:6),
                child: Text(version, style: TextStyle(color: Colors.white, fontSize: 13),),
              )
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: duBlue,
        ),
      body: const Center(
        child: Text('여기는 설정 페이지입니다.'),
      ),
    );
  }
}
