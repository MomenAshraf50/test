import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtest/core/utils/resources/extensions_manager.dart';
import 'package:jobtest/features/video/presentation/controller/cubit.dart';
import 'package:jobtest/features/video/presentation/controller/states.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit appCubit = AppCubit.get(context);
    appCubit.videoControllerInitialize();
    print('${appCubit.controller.value.volume}');
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Center(
              child: appCubit.controller.value.isInitialized
                  ? SizedBox(
                      height: 25.h,
                      child: AspectRatio(
                        aspectRatio: appCubit.controller.value.aspectRatio,
                        child: VideoPlayer(appCubit.controller),
                      ),
                    )
                  : SizedBox(
                      height: 25.h,
                      child: const Center(
                          child: CircularProgressIndicator(
                        color: Colors.white,
                      )),
                    ),
            ),
            if (appCubit.controller.value.isInitialized)
              Row(
                children: [
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        appCubit.playAndPauseVideo();
                      },
                      icon:  Icon(
                        appCubit.controller.value.isPlaying? Icons.pause_circle:Icons.play_circle,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        appCubit.muteVideo();
                      },
                      icon:  Icon(
                        appCubit.controller.value.volume > 0.0? Icons.volume_up:Icons.volume_mute,
                        color: Colors.white,
                      )),
                ],
              )
          ],
        );
      },
    );
  }
}
