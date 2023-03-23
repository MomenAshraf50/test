import 'package:flutter/material.dart';
import 'package:jobtest/core/utils/resources/constants_manager.dart';
import 'package:jobtest/core/utils/resources/extensions_manager.dart';
import 'package:jobtest/core/utils/widgets/default_text.dart';
import 'package:jobtest/features/video/presentation/widgets/comment_widget.dart';
import 'package:jobtest/features/video/presentation/widgets/video_player_widget.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSizes.screenHeight = MediaQuery.of(context).size.height;
    ScreenSizes.screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VideoPlayerWidget(),
            verticalSpace(2.h),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.rSp),
                      topLeft: Radius.circular(30.rSp),
                    ),
                    color: Colors.grey[900]),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.rSp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 15.w,
                              height: 0.5.h,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.rSp)),
                                  color: Colors.grey[700]),
                            ),
                          ),
                          verticalSpace(2.h),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.lightBlue,
                                radius: 16.rSp,
                              ),
                              horizontalSpace(4.w),
                              const DefaultText(
                                title: 'purple-circle',
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          verticalSpace(1.h),
                          DefaultText(
                            title: 'The Consistancy of these welds',
                            color: Colors.white,
                            fontSize: 20.rSp,
                          ),
                          verticalSpace(3.h),
                          Row(
                            children: const [
                              Icon(
                                Icons.rocket_outlined,
                                color: Colors.grey,
                              ),
                              DefaultText(
                                title: 'Best Comments',
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Container(
                            color: Colors.black,
                            width: double.infinity,
                            padding: EdgeInsets.all(15.rSp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommentWidget(
                                  avatarColor: Colors.pink,
                                  comment:
                                      'What Kind of welder is this? Expensive?',
                                  likes: '2.9K',
                                  time: '11h',
                                  userName: 'Equal-warning-8612',
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 0.1.w,
                                      height: 25.h,
                                      color: Colors.grey,
                                    ),
                                    horizontalSpace(5.w),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CommentWidget(
                                            time: '11h',
                                            likes: '2.3K',
                                            comment: 'Laser welder and yes.',
                                            avatarColor: Colors.blue,
                                            userName: 'EllzGoesPro',
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 0.1.w,
                                                height: 11.h,
                                                color: Colors.grey,
                                              ),
                                              horizontalSpace(5.w),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CommentWidget(
                                                      time: '10h',
                                                      likes: '2K',
                                                      comment:
                                                          'Like how much for one of these?',
                                                      avatarColor: Colors.pink,
                                                      userName:
                                                          'Equal-warning-8612',
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 5.h,
                                      width: 10.w,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional.topEnd,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.yellow,
                                              radius: 14.rSp,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional
                                                .centerStart,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.green,
                                              radius: 14.rSp,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    horizontalSpace(3.w),
                                    const DefaultText(title: '197 people here')
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[900],
                                      borderRadius:
                                          BorderRadius.circular(10.rSp)),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.rSp),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'Add a comment.',
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
