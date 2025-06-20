// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_system_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileSystemModel _$FileSystemModelFromJson(Map<String, dynamic> json) {
  return _FileSystem.fromJson(json);
}

/// @nodoc
mixin _$FileSystemModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  int get size => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime get modifiedAt => throw _privateConstructorUsedError;
  @HiveField(5)
  List<EventModel> get events => throw _privateConstructorUsedError;

  /// Serializes this FileSystemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileSystemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileSystemModelCopyWith<FileSystemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileSystemModelCopyWith<$Res> {
  factory $FileSystemModelCopyWith(
          FileSystemModel value, $Res Function(FileSystemModel) then) =
      _$FileSystemModelCopyWithImpl<$Res, FileSystemModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) int size,
      @HiveField(3) DateTime createdAt,
      @HiveField(4) DateTime modifiedAt,
      @HiveField(5) List<EventModel> events});
}

/// @nodoc
class _$FileSystemModelCopyWithImpl<$Res, $Val extends FileSystemModel>
    implements $FileSystemModelCopyWith<$Res> {
  _$FileSystemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileSystemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? size = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileSystemImplCopyWith<$Res>
    implements $FileSystemModelCopyWith<$Res> {
  factory _$$FileSystemImplCopyWith(
          _$FileSystemImpl value, $Res Function(_$FileSystemImpl) then) =
      __$$FileSystemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) int size,
      @HiveField(3) DateTime createdAt,
      @HiveField(4) DateTime modifiedAt,
      @HiveField(5) List<EventModel> events});
}

/// @nodoc
class __$$FileSystemImplCopyWithImpl<$Res>
    extends _$FileSystemModelCopyWithImpl<$Res, _$FileSystemImpl>
    implements _$$FileSystemImplCopyWith<$Res> {
  __$$FileSystemImplCopyWithImpl(
      _$FileSystemImpl _value, $Res Function(_$FileSystemImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileSystemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? size = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? events = null,
  }) {
    return _then(_$FileSystemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$FileSystemImpl implements _FileSystem {
  _$FileSystemImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.size,
      @HiveField(3) required this.createdAt,
      @HiveField(4) required this.modifiedAt,
      @HiveField(5) required final List<EventModel> events})
      : _events = events;

  factory _$FileSystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileSystemImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final int size;
  @override
  @HiveField(3)
  final DateTime createdAt;
  @override
  @HiveField(4)
  final DateTime modifiedAt;
  final List<EventModel> _events;
  @override
  @HiveField(5)
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'FileSystemModel(id: $id, name: $name, size: $size, createdAt: $createdAt, modifiedAt: $modifiedAt, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileSystemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, size, createdAt,
      modifiedAt, const DeepCollectionEquality().hash(_events));

  /// Create a copy of FileSystemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileSystemImplCopyWith<_$FileSystemImpl> get copyWith =>
      __$$FileSystemImplCopyWithImpl<_$FileSystemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileSystemImplToJson(
      this,
    );
  }
}

abstract class _FileSystem implements FileSystemModel {
  factory _FileSystem(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) required final int size,
      @HiveField(3) required final DateTime createdAt,
      @HiveField(4) required final DateTime modifiedAt,
      @HiveField(5) required final List<EventModel> events}) = _$FileSystemImpl;

  factory _FileSystem.fromJson(Map<String, dynamic> json) =
      _$FileSystemImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  int get size;
  @override
  @HiveField(3)
  DateTime get createdAt;
  @override
  @HiveField(4)
  DateTime get modifiedAt;
  @override
  @HiveField(5)
  List<EventModel> get events;

  /// Create a copy of FileSystemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileSystemImplCopyWith<_$FileSystemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
