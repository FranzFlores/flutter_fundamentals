import 'package:flutter/material.dart';
import 'package:tiktok_app/domain/entities/video_post.dart';
import 'package:tiktok_app/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  final VideoPostRepository videoRepository;

  DiscoverProvider({
    required this.videoRepository
  });

  Future<void> loadNextPage() async {
    // simular una consulta http asíncrona
    await Future.delayed(const Duration(seconds: 2));

    //Cargar los videos
    final newVideos = await videoRepository.getTrendingVideosByPage(1);
    
    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
