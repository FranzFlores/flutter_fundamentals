import 'package:flutter/material.dart';
import 'package:tiktok_app/domain/entities/video_post.dart';
import 'package:tiktok_app/presentation/widgets/shared/video_button.dart';
import 'package:tiktok_app/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({required this.videos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            // Videos
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.name,
                videoUrl: videoPost.videoUrl,
              ),
            ),
            //botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButton(video: videoPost)
            )
          ],
        );
      },
    );
  }
}
