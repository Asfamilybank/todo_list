import 'package:floor/floor.dart';
import 'package:todo_list/entity/base.dart';

@Entity(
  tableName: 'category',
)
class Category extends Base {
  final String title;

  final int index;

  Category({
    required this.title,
    required this.index,
    required super.id,
    required super.updateTime,
  });
}
