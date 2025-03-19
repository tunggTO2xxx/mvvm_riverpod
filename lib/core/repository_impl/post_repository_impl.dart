import 'package:mvvm_riverpod_base/core/network/service/api_service.dart';
import 'package:mvvm_riverpod_base/core/repository/post_repository.dart';
import 'package:mvvm_riverpod_base/models/response_models/post/post.dart';

class PostRepositoryImpl implements IPostRepository {
  final ApiService _apiService;

  PostRepositoryImpl(this._apiService);

  @override
  Future<List<Post>> fetchPosts() async {
    return await _apiService.getPosts();
  }
}