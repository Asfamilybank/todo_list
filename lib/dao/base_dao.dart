import 'package:floor/floor.dart';

abstract class BaseDao<T> {
  @insert
  Future<int> insertUnique(T data);

  @insert
  Future<List<int>> insertMany(List<T> list);

  @update
  Future<void> updateUnique(T data);

  @update
  Future<int> updateMany(List<T> list);

  @delete
  Future<void> deleteUnique(T data);

  @delete
  Future<int> deleteMany(List<T> list);
}
