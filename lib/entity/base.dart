import 'package:floor/floor.dart';
import 'package:todo_list/type_converter.dart';

class Base {
  @PrimaryKey(autoGenerate: true)
  final int id;

  @TypeConverters([DateTimeConverter])
  @ColumnInfo(name: 'create_time')
  final DateTime createTime;

  @TypeConverters([DateTimeConverter])
  @ColumnInfo(name: 'update_time')
  final DateTime updateTime;

  Base({
    required this.id,
    required this.updateTime,
  }) : createTime = DateTime.now();
}
