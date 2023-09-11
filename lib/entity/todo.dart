import 'package:floor/floor.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_list/entity/base.dart';
import 'package:todo_list/type_converter.dart';

@Entity(
  tableName: 'todo',
  foreignKeys: [
    ForeignKey(
      childColumns: ['category_id'],
      parentColumns: ['id'],
      entity: Category,
    ),
  ],
)
class Todo extends Base {
  final String title;

  final String? remark;

  @ColumnInfo(name: 'category_id')
  final int? categoryId;

  @ColumnInfo(name: 'repeat_time')
  final int? repeatTime;

  @ColumnInfo(name: 'remind_time')
  final int? remindTime;

  @TypeConverters([DateTimeConverter])
  @ColumnInfo(name: 'estimated_time')
  final DateTime estimatedTime;

  @TypeConverters([DateTimeConverter])
  @ColumnInfo(name: 'completed_time')
  final DateTime? completedTime;

  Todo({
    required this.title,
    this.remark,
    this.categoryId,
    this.repeatTime,
    this.remindTime,
    required this.estimatedTime,
    this.completedTime,
    required super.id,
    required super.updateTime,
  });
}
