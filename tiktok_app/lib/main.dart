import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tiktok_app/config/theme/app_theme.dart';
import 'package:tiktok_app/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:tiktok_app/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:tiktok_app/presentation/providers/discover_provider.dart';
import 'package:tiktok_app/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostsRepositoryImpl(videosDataSource: LocalVideoDatasource());    

    return MultiProvider(
      providers: [ChangeNotifierProvider(lazy: false, create: (_) => DiscoverProvider(videoRepository: videoPostRepository)..loadNextPage())],
      child: MaterialApp(
          title: 'Tik Tok App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
