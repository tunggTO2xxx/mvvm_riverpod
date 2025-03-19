import 'package:mvvm_riverpod_base/models/response_models/post/post.dart';

abstract class IPostRepository {
  Future<List<Post>> fetchPosts();
}