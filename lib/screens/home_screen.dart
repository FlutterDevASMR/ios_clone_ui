import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ios_clone_ui/utils/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/menu_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    List<IconData> iconsList = [
      CupertinoIcons.wifi,
      CupertinoIcons.speaker_1_fill,
      CupertinoIcons.bluetooth,
      CupertinoIcons.airplane,
      CupertinoIcons.alarm_fill,
      CupertinoIcons.arrow_2_circlepath,
      CupertinoIcons.arrow_up_arrow_down,
      CupertinoIcons.battery_full,
      CupertinoIcons.bed_double_fill,
      CupertinoIcons.bell_fill,
      CupertinoIcons.book_solid,
      CupertinoIcons.bookmark_fill,
      CupertinoIcons.brightness_solid,
      CupertinoIcons.bubble_left_fill,
      CupertinoIcons.calendar,
      CupertinoIcons.camera_fill,
      CupertinoIcons.car,
      CupertinoIcons.cart_fill,
      CupertinoIcons.chart_bar_fill,
      CupertinoIcons.cloud_fill,
      CupertinoIcons.compass_fill,
      CupertinoIcons.lightbulb_fill,
      CupertinoIcons.game_controller_solid,
      CupertinoIcons.mic_fill,
      CupertinoIcons.minus_circle_fill,
      CupertinoIcons.moon_fill,
      CupertinoIcons.search,
      CupertinoIcons.tv_fill,
      CupertinoIcons.video_camera_solid,
      CupertinoIcons.waveform,
    ];

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: controller,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.custom(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: SliverQuiltedGridDelegate(
                            crossAxisCount: 4,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            repeatPattern: QuiltedGridRepeatPattern.inverted,
                            pattern: [
                              const QuiltedGridTile(2, 2),
                              const QuiltedGridTile(1, 1),
                              const QuiltedGridTile(1, 1),
                              const QuiltedGridTile(1, 1),
                              const QuiltedGridTile(1, 1),
                            ],
                          ),
                          childrenDelegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                MenuButton(icon: iconsList[index]),
                            childCount: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.custom(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: SliverQuiltedGridDelegate(
                            crossAxisCount: 4,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            repeatPattern: QuiltedGridRepeatPattern.inverted,
                            pattern: [
                              const QuiltedGridTile(1, 1),
                              const QuiltedGridTile(1, 1),
                              const QuiltedGridTile(2, 2),
                              const QuiltedGridTile(1, 1),
                              const QuiltedGridTile(1, 1),
                            ],
                          ),
                          childrenDelegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                MenuButton(icon: iconsList[index + 15]),
                            childCount: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                SmoothPageIndicator(
                  controller: controller,
                  count: 2,
                  effect: SwapEffect(
                    dotWidth: 12,
                    dotHeight: 12,
                    dotColor: Constants.buttonColor,
                    activeDotColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuButton(
                        icon: CupertinoIcons.phone_fill,
                      ),
                      MenuButton(
                        icon: CupertinoIcons.chat_bubble_text_fill,
                      ),
                      MenuButton(
                        icon: CupertinoIcons.person_fill,
                      ),
                      MenuButton(
                        icon: CupertinoIcons.mail_solid,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
