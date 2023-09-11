import 'package:floor/floor.dart';
import 'package:todo_list/dao/base_dao.dart';
import 'package:todo_list/entity/todo.dart';

@dao
abstract class TodoDao extends BaseDao {
  @Query('SELECT * FROM todo')
  Future<List<Todo>> findAll();

  @Query('SELECT * FROM todo')
  Stream<List<Todo>> findAllStream();

  @Query('SELECT * FROM todo WHERE id = :id')
  Future<Todo?> findUniqueById(int id);
}
