import 'package:tiktok_app/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  // Obtener videos de tendencias
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  
  // Obtener videos favoritos del usuario
  Future<List<VideoPost>> getFavoriteVideosByPage(String userID);
}