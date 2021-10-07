import 'package:flutter/material.dart';
import 'package:untitled1/sign_in.dart';
import 'list.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int count = 1;

  Widget customDot({required Color backgroundColor}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: 6,
      ),
    );
  }

  Widget nextCircleButton(
      {required Color circleColor, required Color circleBgColor}) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            count++;
            if (count > 3) {
              count = 1;
            }
          },
        );
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: circleBgColor,
        child: CircleAvatar(
          backgroundColor: circleColor,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: count == 1
                      ? k1BgColor
                      : count == 2
                          ? k2BgColor
                          : k3BgColor,
                ),
              ),
    InkWell(
                child: Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    count == 1
                                        ? title[0]
                                        : count == 2
                                            ? title[1]
                                            : title[2],
                                    style: TextStyle(
                                      height: 1.3,
                                      fontSize: 31,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, \nconsetetur sadipscing elitr, sed diam",
                                    style: TextStyle(height: 1.5),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  count == 1
                                      ? Row(
                                          children: [
                                            customDot(
                                              backgroundColor: k1DotColor,
                                            ),
                                            customDot(
                                              backgroundColor: k1DotLightColor,
                                            ),
                                            customDot(
                                              backgroundColor: k1DotLightColor,
                                            ),
                                          ],
                                        )
                                      : count == 2
                                          ? Row(
                                              children: [
                                                customDot(
                                                  backgroundColor:
                                                      k2DotLightColor,
                                                ),
                                                customDot(
                                                  backgroundColor: k2DotColor,
                                                ),
                                                customDot(
                                                  backgroundColor:
                                                      k2DotLightColor,
                                                ),
                                              ],
                                            )
                                          : Row(
                                              children: [
                                                customDot(
                                                  backgroundColor:
                                                      k3DotLightColor,
                                                ),
                                                customDot(
                                                  backgroundColor:
                                                      k3DotLightColor,
                                                ),
                                                customDot(
                                                  backgroundColor: k3DotColor,
                                                ),
                                              ],
                                            ),
                                  count == 1
                                      ? nextCircleButton(
                                          circleBgColor: k1DotLightColor,
                                          circleColor: k1DotColor,
                                        )
                                      : count == 2
                                          ? nextCircleButton(
                                              circleBgColor: k2DotLightColor,
                                              circleColor: k2DotColor,
                                            )
                                          : nextCircleButton(
                                              circleBgColor: k3DotLightColor,
                                              circleColor: k3DotColor,
                                            )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          count == 1
              ? Positioned(
                  right: -size.width * 0.2,
                  child: Align(
                    child: Image.asset(images[0]),
                  ))
              : count == 2
                  ? Positioned(
                      left: 0,
                      child: Align(
                        child: Image.asset(images[1]),
                      ),
                    )
                  : Positioned(
                      left: size.width * 0.3 - 10,
                      child: Align(
                        child: Image.asset(images[2]),
                      ),
                    )
        ],
      ),
    );
  }
}
