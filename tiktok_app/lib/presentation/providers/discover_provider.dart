import 'package:flutter/material.dart';
import 'package:tiktok_app/domain/entities/video_post.dart';
import 'package:tiktok_app/infrastructure/models/local_video_model.dart';
import 'package:tiktok_app/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // simular una consulta http asíncrona
    await Future.delayed(const Duration(seconds: 2));

    //Cargar los videos
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    
    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
