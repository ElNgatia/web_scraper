// ignore_for_file: no_leading_underscores_for_library_prefixes, invalid_use_of_internal_member, non_constant_identifier_names
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
// import 'package:orm/orm.dart' ;

part 'prisma_client.g.dart';

enum ProductsScalarFieldEnum implements _i1.PrismaEnum {
  id,
  name,
  price;

  @override
  String? get originalName => null;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

@_i1.jsonSerializable
class ProductsWhereInput implements _i1.JsonSerializable {
  const ProductsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.price,
  });

  factory ProductsWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ProductsWhereInputFromJson(json);

  final Iterable<ProductsWhereInput>? AND;

  final Iterable<ProductsWhereInput>? OR;

  final Iterable<ProductsWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? name;

  final FloatFilter? price;

  @override
  Map<String, dynamic> toJson() => _$ProductsWhereInputToJson(this);
}

@_i1.jsonSerializable
class ProductsOrderByWithRelationInput implements _i1.JsonSerializable {
  const ProductsOrderByWithRelationInput({
    this.id,
    this.name,
    this.price,
  });

  factory ProductsOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductsOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class ProductsWhereUniqueInput implements _i1.JsonSerializable {
  const ProductsWhereUniqueInput({
    this.id,
    this.name,
  });

  factory ProductsWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ProductsWhereUniqueInputFromJson(json);

  final int? id;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$ProductsWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class ProductsOrderByWithAggregationInput implements _i1.JsonSerializable {
  const ProductsOrderByWithAggregationInput({
    this.id,
    this.name,
    this.price,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory ProductsOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? price;

  @JsonKey(name: r'_count')
  final ProductsCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final ProductsAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final ProductsMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final ProductsMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final ProductsSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductsOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class ProductsScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const ProductsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.price,
  });

  factory ProductsScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<ProductsScalarWhereWithAggregatesInput>? AND;

  final Iterable<ProductsScalarWhereWithAggregatesInput>? OR;

  final Iterable<ProductsScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? name;

  final FloatWithAggregatesFilter? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductsScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class ProductsCreateInput implements _i1.JsonSerializable {
  const ProductsCreateInput({
    required this.name,
    required this.price,
  });

  factory ProductsCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductsCreateInputFromJson(json);

  final String name;

  final double price;

  @override
  Map<String, dynamic> toJson() => _$ProductsCreateInputToJson(this);
}

@_i1.jsonSerializable
class ProductsUncheckedCreateInput implements _i1.JsonSerializable {
  const ProductsUncheckedCreateInput({
    this.id,
    required this.name,
    required this.price,
  });

  factory ProductsUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductsUncheckedCreateInputFromJson(json);

  final int? id;

  final String name;

  final double price;

  @override
  Map<String, dynamic> toJson() => _$ProductsUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class ProductsUpdateInput implements _i1.JsonSerializable {
  const ProductsUpdateInput({
    this.name,
    this.price,
  });

  factory ProductsUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductsUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  final FloatFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() => _$ProductsUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ProductsUncheckedUpdateInput implements _i1.JsonSerializable {
  const ProductsUncheckedUpdateInput({
    this.id,
    this.name,
    this.price,
  });

  factory ProductsUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductsUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final FloatFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() => _$ProductsUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ProductsCreateManyInput implements _i1.JsonSerializable {
  const ProductsCreateManyInput({
    this.id,
    required this.name,
    required this.price,
  });

  factory ProductsCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ProductsCreateManyInputFromJson(json);

  final int? id;

  final String name;

  final double price;

  @override
  Map<String, dynamic> toJson() => _$ProductsCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class ProductsUpdateManyMutationInput implements _i1.JsonSerializable {
  const ProductsUpdateManyMutationInput({
    this.name,
    this.price,
  });

  factory ProductsUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$ProductsUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  final FloatFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductsUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class ProductsUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const ProductsUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.price,
  });

  factory ProductsUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final FloatFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductsUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class FloatFilter implements _i1.JsonSerializable {
  const FloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory FloatFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$FloatFilterToJson(this);
}

@_i1.jsonSerializable
class ProductsCountOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductsCountOrderByAggregateInput({
    this.id,
    this.name,
    this.price,
  });

  factory ProductsCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductsCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductsAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductsAvgOrderByAggregateInput({
    this.id,
    this.price,
  });

  factory ProductsAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductsAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductsMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductsMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.price,
  });

  factory ProductsMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductsMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductsMinOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductsMinOrderByAggregateInput({
    this.id,
    this.name,
    this.price,
  });

  factory ProductsMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductsMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductsSumOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductsSumOrderByAggregateInput({
    this.id,
    this.price,
  });

  factory ProductsSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductsSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class FloatWithAggregatesFilter implements _i1.JsonSerializable {
  const FloatWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory FloatWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatWithAggregatesFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedFloatFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedFloatFilter? $min;

  @JsonKey(name: r'_max')
  final NestedFloatFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$FloatWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class FloatFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const FloatFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory FloatFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$FloatFieldUpdateOperationsInputFromJson(json);

  final double? set;

  final double? increment;

  final double? decrement;

  final double? multiply;

  final double? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$FloatFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedFloatWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedFloatWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatWithAggregatesFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedFloatFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedFloatFilter? $min;

  @JsonKey(name: r'_max')
  final NestedFloatFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedFloatWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class Products implements _i1.JsonSerializable {
  const Products({
    required this.id,
    required this.name,
    required this.price,
  });

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  final int id;

  final String name;

  final double price;

  @override
  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}

class ProductsFluent<T> extends _i1.PrismaFluent<T> {
  const ProductsFluent(
    super.original,
    super.$query,
  );
}

extension ProductsModelDelegateExtension on _i1.ModelDelegate<Products> {
  ProductsFluent<Products?> findUnique(
      {required ProductsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueProducts',
    );
    final future = query(ProductsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Products.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductsFluent<Products?>(
      future,
      query,
    );
  }

  ProductsFluent<Products> findUniqueOrThrow(
      {required ProductsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueProductsOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueProductsOrThrow',
    );
    final future = query(ProductsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Products.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Products)'));
    return ProductsFluent<Products>(
      future,
      query,
    );
  }

  ProductsFluent<Products?> findFirst({
    ProductsWhereInput? where,
    Iterable<ProductsOrderByWithRelationInput>? orderBy,
    ProductsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProductsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstProducts',
    );
    final future = query(ProductsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Products.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductsFluent<Products?>(
      future,
      query,
    );
  }

  ProductsFluent<Products> findFirstOrThrow({
    ProductsWhereInput? where,
    Iterable<ProductsOrderByWithRelationInput>? orderBy,
    ProductsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProductsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstProductsOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstProductsOrThrow',
    );
    final future = query(ProductsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Products.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Products)'));
    return ProductsFluent<Products>(
      future,
      query,
    );
  }

  Future<Iterable<Products>> findMany({
    ProductsWhereInput? where,
    Iterable<ProductsOrderByWithRelationInput>? orderBy,
    ProductsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProductsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyProducts',
    );
    final fields = ProductsScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyProducts) => findManyProducts.map(
        (Map findManyProducts) => Products.fromJson(findManyProducts.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  ProductsFluent<Products> create({required ProductsCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneProducts',
    );
    final future = query(ProductsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Products.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Products)'));
    return ProductsFluent<Products>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<ProductsCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyProducts',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyProducts) =>
        AffectedRowsOutput.fromJson(createManyProducts.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ProductsFluent<Products?> update({
    required ProductsUpdateInput data,
    required ProductsWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneProducts',
    );
    final future = query(ProductsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Products.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductsFluent<Products?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required ProductsUpdateManyMutationInput data,
    ProductsWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyProducts',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyProducts) =>
        AffectedRowsOutput.fromJson(updateManyProducts.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ProductsFluent<Products> upsert({
    required ProductsWhereUniqueInput where,
    required ProductsCreateInput create,
    required ProductsUpdateInput update, required ProductsCreateInput data,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneProducts',
    );
    final future = query(ProductsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Products.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Products)'));
    return ProductsFluent<Products>(
      future,
      query,
    );
  }

  ProductsFluent<Products?> delete({required ProductsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneProducts',
    );
    final future = query(ProductsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Products.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductsFluent<Products?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({ProductsWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyProducts',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyProducts) =>
        AffectedRowsOutput.fromJson(deleteManyProducts.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateProducts aggregate({
    ProductsWhereInput? where,
    Iterable<ProductsOrderByWithRelationInput>? orderBy,
    ProductsWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateProducts',
    );
    return AggregateProducts(query);
  }

  Future<Iterable<ProductsGroupByOutputType>> groupBy({
    ProductsWhereInput? where,
    Iterable<ProductsOrderByWithAggregationInput>? orderBy,
    required Iterable<ProductsScalarFieldEnum> by,
    ProductsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByProducts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByProducts',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByProducts) =>
        groupByProducts.map((Map groupByProducts) =>
            ProductsGroupByOutputType.fromJson(groupByProducts.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class ProductsGroupByOutputType implements _i1.JsonSerializable {
  const ProductsGroupByOutputType({
    this.id,
    this.name,
    this.price,
  });

  factory ProductsGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$ProductsGroupByOutputTypeFromJson(json);

  final int? id;

  final String? name;

  final double? price;

  @override
  Map<String, dynamic> toJson() => _$ProductsGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateProducts {
  const AggregateProducts(this.$query);

  final _i1.PrismaFluentQuery $query;

  ProductsCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ProductsCountAggregateOutputType(query);
  }

  ProductsAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return ProductsAvgAggregateOutputType(query);
  }

  ProductsSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return ProductsSumAggregateOutputType(query);
  }

  ProductsMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return ProductsMinAggregateOutputType(query);
  }

  ProductsMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return ProductsMaxAggregateOutputType(query);
  }
}

class ProductsCountAggregateOutputType {
  const ProductsCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ProductsAvgAggregateOutputType {
  const ProductsAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ProductsSumAggregateOutputType {
  const ProductsSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ProductsMinAggregateOutputType {
  const ProductsMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<double?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ProductsMaxAggregateOutputType {
  const ProductsMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<double?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as double?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJjb2Nrcm9hY2hkYiIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKbW9kZWwgUHJvZHVjdHMgewogIGlkICAgIEludCAgICBAaWQgQGRlZmF1bHQoc2VxdWVuY2UoKSkKICBuYW1lICBTdHJpbmcgQHVuaXF1ZQogIHByaWNlIEZsb2F0Cn0K',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'/home/ngatia/node_modules/prisma/query-engine-debian-openssl-3.0.x',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );

  _i1.ModelDelegate<Products> get products => _i1.ModelDelegate<Products>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
