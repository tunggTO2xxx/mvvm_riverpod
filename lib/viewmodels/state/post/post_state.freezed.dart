// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostState {
  List<Post> get posts;
  bool get isLoading;
  String? get error;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostStateCopyWith<PostState> get copyWith =>
      _$PostStateCopyWithImpl<PostState>(this as PostState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostState &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(posts), isLoading, error);

  @override
  String toString() {
    return 'PostState(posts: $posts, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) _then) =
      _$PostStateCopyWithImpl;
  @useResult
  $Res call({List<Post> posts, bool isLoading, String? error});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._self, this._then);

  final PostState _self;
  final $Res Function(PostState) _then;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      posts: null == posts
          ? _self.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _PostState implements PostState {
  const _PostState(
      {final List<Post> posts = const <Post>[],
      this.isLoading = false,
      this.error})
      : _posts = posts;

  final List<Post> _posts;
  @override
  @JsonKey()
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostStateCopyWith<_PostState> get copyWith =>
      __$PostStateCopyWithImpl<_PostState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostState &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_posts), isLoading, error);

  @override
  String toString() {
    return 'PostState(posts: $posts, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$PostStateCopyWith<$Res>
    implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(
          _PostState value, $Res Function(_PostState) _then) =
      __$PostStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<Post> posts, bool isLoading, String? error});
}

/// @nodoc
class __$PostStateCopyWithImpl<$Res> implements _$PostStateCopyWith<$Res> {
  __$PostStateCopyWithImpl(this._self, this._then);

  final _PostState _self;
  final $Res Function(_PostState) _then;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? posts = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_PostState(
      posts: null == posts
          ? _self._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
