import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_riverpod_base/l10n/l10n.dart';
import 'package:mvvm_riverpod_base/viewmodels/state_notifier/post/post_state_notifier.dart';

class PostScreen extends ConsumerStatefulWidget {
  const PostScreen({super.key});

  @override
  ConsumerState<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends ConsumerState<PostScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => ref.read(postViewModelProvider.notifier).fetchPosts());
  }

  @override
  Widget build(BuildContext context) {
    final postState = ref.watch(postViewModelProvider);
    final postNotifier = ref.read(postViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text(L10n.current.post)),
      body: postState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : postState.error != null
              ? Center(child: Text("Error: ${postState.error}"))
              : ListView.builder(
                  itemCount: postState.posts.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(postState.posts[index].title),
                    subtitle: Text(postState.posts[index].body),
                  ),
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postNotifier.fetchPosts();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
