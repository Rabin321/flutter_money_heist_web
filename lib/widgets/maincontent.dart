import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileMainContent(),
      desktop: DesktopMainContent(),
    );
  }
}

Widget MobileMainContent() {
  return Expanded(
      child: Container(
          // child: Row(
          //   children: [
          //     Expanded(child: Container()),
          //     Expanded(
          //         child: Container(
          //       child: Image.asset(
          //         'assets/images/singproff.png',
          //       ),
          //     )),
          //   ],
          // ),
          ));
}

Widget DesktopMainContent() {
  return Expanded(
    child: Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            child: Column(
              children: [
                Container(
                    child: Column(
                  children: [
                    const Text(
                      "LA CASA",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow),
                    ),
                    const SizedBox(
                      child: Text(
                        'DE',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Colors.red),
                      ),
                      height: 50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 50,
                      child: Text(
                        'PAPEL',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Colors.yellow),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: const Text(
                        "MONEY HEIST",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          child: Image.asset(
            'assets/images/singproff.png',
          ),
        )),
      ],
    )),
  );
}
