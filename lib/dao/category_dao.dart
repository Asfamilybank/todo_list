import 'package:floor/floor.dart';
import 'package:todo_list/dao/base_dao.dart';
import 'package:todo_list/entity/todo.dart';

@dao
abstract class CategoryDao extends BaseDao {
  @Query('SELECT * FROM category')
  Future<List<Todo>> findAll();

  @Query('SELECT * FROM category')
  Stream<List<Todo>> findAllStream();

  @Query('SELECT * FROM category WHERE id = :id')
  Future<Todo?> findUniqueById(int id);
}
