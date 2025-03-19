import 'package:dio/dio.dart';
import 'package:mvvm_riverpod_base/core/network/network_provider.dart';
import 'package:mvvm_riverpod_base/models/response_models/post/post.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(NetworkPath.posts)
  Future<List<Post>> getPosts();
}