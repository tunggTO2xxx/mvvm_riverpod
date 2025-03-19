
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_riverpod_base/core/network/network_provider.dart';
import 'package:mvvm_riverpod_base/viewmodels/state/post/post_state.dart';

final postViewModelProvider =
    StateNotifierProvider.autoDispose<PostNotifier, PostState>(
  PostNotifier.new,
);

class PostNotifier extends StateNotifier<PostState> {
  PostNotifier(this.ref) : super(const PostState());

  Ref ref;

  Future<void> fetchPosts() async {
    state = state.copyWith(isLoading: true);

    final postRepo = ref.read(postRepositoryProvider);

    try {
      final posts = await postRepo.fetchPosts();
      state = state.copyWith(posts: posts, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}
