import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtest/features/video/presentation/controller/states.dart';
import 'package:video_player/video_player.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  late VideoPlayerController controller;

  void videoControllerInitialize() {
    controller = VideoPlayerController.network(
        'https://mf-baria.darbwali.com/api/fm/v1_download?file=dmlkZW86X1BtRDo0MDAzMjIwMjp2aWRlby9tcDQ=.mp4')
      ..initialize().then((value) {
        emit(VideoPlayerInitializeSuccessState());
      }).catchError((error) {
        emit(VideoPlayerInitializeErrorState());
      });
  }

  void playAndPauseVideo(){
    controller.value.isPlaying
        ? controller.pause()
        : controller.play();
    emit(PauseAndPlayVideoState());
  }

  void muteVideo(){
    if(controller.value.volume > 0){
      controller.setVolume(0);
      print(controller.value.volume);
    }else{
      controller.setVolume(1);
      print(controller.value.volume);

    }
    emit(MuteVideoState());
  }
}
