import 'package:tiktok_app/domain/datasources/video_posts_datasource.dart';
import 'package:tiktok_app/domain/entities/video_post.dart';

import '../../domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  
  final VideoPostDataSource videosDataSource;

  VideoPostsRepositoryImpl({
    required this.videosDataSource
  });
  
  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }
  
}