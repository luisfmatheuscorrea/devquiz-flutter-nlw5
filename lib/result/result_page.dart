import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;

  const ResultPage(
      {Key? key,
      required this.title,
      required this.length,
      required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text(
                  "Parabéns!",
                  style: AppTextStyles.heading40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text.rich(
                  TextSpan(
                      text: "Você concluiu",
                      style: AppTextStyles.body,
                      children: [
                        TextSpan(
                            text: "\n$title", style: AppTextStyles.bodyBold),
                        TextSpan(
                            text: "\ncom $result de $length acertos.",
                            style: AppTextStyles.body),
                      ]),
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 1.6),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: NextButtonWidget.red(
                              label: "Compartilhar",
                              onTap: () {
                                Share.share(
                                    'Obaa!!! Olha, fiz $result pontos no Quiz de $title no app BibleQuiz!\n\nConfira o app e responda os Quizzes ;P\nnão-temos-na-googleplay-e-nem-appstore.com hehe!!');
                              })),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: NextButtonWidget.transparent(
                              label: "Voltar ao início",
                              onTap: () {
                                Navigator.pop(context);
                              })),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
