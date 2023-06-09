import 'package:tiktok_app/domain/datasources/video_posts_datasource.dart';
import 'package:tiktok_app/domain/entities/video_post.dart';
import 'package:tiktok_app/infrastructure/models/local_video_model.dart';
import 'package:tiktok_app/shared/data/local_video_post.dart';

class LocalVideoDatasource implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
