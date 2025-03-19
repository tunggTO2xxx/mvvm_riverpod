import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mvvm_riverpod_base/models/response_models/post/post.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  const factory PostState({
    @Default(<Post>[]) List<Post> posts,
    @Default(false) bool isLoading,
    final String? error,
  }) = _PostState;
  
  @override
  // TODO: implement error
  String? get error => throw UnimplementedError();
  
  @override
  // TODO: implement isLoading
  bool get isLoading => throw UnimplementedError();
  
  @override
  // TODO: implement posts
  List<Post> get posts => throw UnimplementedError();
}
