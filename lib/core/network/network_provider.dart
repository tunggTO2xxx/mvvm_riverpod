import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_riverpod_base/core/config/app_flavors.dart';
import 'package:mvvm_riverpod_base/core/network/service/api_client.dart';
import 'package:mvvm_riverpod_base/core/network/service/api_service.dart';
import 'package:mvvm_riverpod_base/core/repository/post_repository.dart';
import 'package:mvvm_riverpod_base/core/repository_impl/post_repository_impl.dart';

final dioProvider = FutureProvider<Dio>((ref) async {
  return await ApiClient.setUpDio(AppFlavors.baseUrl);
});

final apiServiceProvider = Provider<ApiService>((ref) {
  final dio = ref.watch(dioProvider).value;
  if (dio != null) {
    return ApiService(dio);
  } else {
    throw Exception("Dio not initialized");
  }
});

final postRepositoryProvider = Provider<IPostRepository>(
    (ref) => PostRepositoryImpl(ref.read(apiServiceProvider)));

class NetworkPath {
  static const posts = '/posts';
}
