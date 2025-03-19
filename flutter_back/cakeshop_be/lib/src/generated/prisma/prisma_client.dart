// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum BakeryScalarFieldEnum implements _i1.PrismaEnum {
  @JsonValue('BAKERY_ID')
  bakeryId(r'BAKERY_ID'),
  @JsonValue('BAKERY_NAME')
  bakeryName(r'BAKERY_NAME'),
  @JsonValue('ADDRESS')
  address(r'ADDRESS'),
  @JsonValue('DESCRIPTION')
  description(r'DESCRIPTION'),
  @JsonValue('OPEN')
  open(r'OPEN'),
  @JsonValue('CLOSE')
  close(r'CLOSE'),
  @JsonValue('URL')
  url(r'URL');

  const BakeryScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum CakeScalarFieldEnum implements _i1.PrismaEnum {
  @JsonValue('CAKE_ID')
  cakeId(r'CAKE_ID'),
  @JsonValue('BAKERY_ID')
  bakeryId(r'BAKERY_ID'),
  @JsonValue('CAKE_NAME')
  cakeName(r'CAKE_NAME'),
  @JsonValue('CAKE_CATEGORY')
  cakeCategory(r'CAKE_CATEGORY'),
  @JsonValue('INGREDIENTS')
  ingredients(r'INGREDIENTS'),
  @JsonValue('URL')
  url(r'URL');

  const CakeScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum NullsOrder implements _i1.PrismaEnum {
  first,
  last;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class BakeryWhereInput implements _i1.JsonSerializable {
  const BakeryWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
    this.cake,
  });

  factory BakeryWhereInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryWhereInputFromJson(json);

  final Iterable<BakeryWhereInput>? AND;

  final Iterable<BakeryWhereInput>? OR;

  final Iterable<BakeryWhereInput>? NOT;

  @JsonKey(name: r'BAKERY_ID')
  final IntFilter? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final StringNullableFilter? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final StringNullableFilter? address;

  @JsonKey(name: r'DESCRIPTION')
  final StringNullableFilter? description;

  @JsonKey(name: r'OPEN')
  final IntNullableFilter? open;

  @JsonKey(name: r'CLOSE')
  final IntNullableFilter? close;

  @JsonKey(name: r'URL')
  final StringNullableFilter? url;

  final CakeListRelationFilter? cake;

  @override
  Map<String, dynamic> toJson() => _$BakeryWhereInputToJson(this);
}

@_i1.jsonSerializable
class BakeryOrderByWithRelationInput implements _i1.JsonSerializable {
  const BakeryOrderByWithRelationInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
    this.cake,
  });

  factory BakeryOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryOrderByWithRelationInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final SortOrder? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final SortOrder? address;

  @JsonKey(name: r'DESCRIPTION')
  final SortOrder? description;

  @JsonKey(name: r'OPEN')
  final SortOrder? open;

  @JsonKey(name: r'CLOSE')
  final SortOrder? close;

  @JsonKey(name: r'URL')
  final SortOrder? url;

  final CakeOrderByRelationAggregateInput? cake;

  @override
  Map<String, dynamic> toJson() => _$BakeryOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class BakeryWhereUniqueInput implements _i1.JsonSerializable {
  const BakeryWhereUniqueInput({this.bakeryId});

  factory BakeryWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryWhereUniqueInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final int? bakeryId;

  @override
  Map<String, dynamic> toJson() => _$BakeryWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class BakeryOrderByWithAggregationInput implements _i1.JsonSerializable {
  const BakeryOrderByWithAggregationInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory BakeryOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$BakeryOrderByWithAggregationInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final SortOrder? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final SortOrder? address;

  @JsonKey(name: r'DESCRIPTION')
  final SortOrder? description;

  @JsonKey(name: r'OPEN')
  final SortOrder? open;

  @JsonKey(name: r'CLOSE')
  final SortOrder? close;

  @JsonKey(name: r'URL')
  final SortOrder? url;

  @JsonKey(name: r'_count')
  final BakeryCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final BakeryAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final BakeryMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final BakeryMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final BakerySumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$BakeryOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class BakeryScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const BakeryScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$BakeryScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<BakeryScalarWhereWithAggregatesInput>? AND;

  final Iterable<BakeryScalarWhereWithAggregatesInput>? OR;

  final Iterable<BakeryScalarWhereWithAggregatesInput>? NOT;

  @JsonKey(name: r'BAKERY_ID')
  final IntWithAggregatesFilter? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final StringNullableWithAggregatesFilter? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final StringNullableWithAggregatesFilter? address;

  @JsonKey(name: r'DESCRIPTION')
  final StringNullableWithAggregatesFilter? description;

  @JsonKey(name: r'OPEN')
  final IntNullableWithAggregatesFilter? open;

  @JsonKey(name: r'CLOSE')
  final IntNullableWithAggregatesFilter? close;

  @JsonKey(name: r'URL')
  final StringNullableWithAggregatesFilter? url;

  @override
  Map<String, dynamic> toJson() =>
      _$BakeryScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class CakeWhereInput implements _i1.JsonSerializable {
  const CakeWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
    this.bakery,
  });

  factory CakeWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CakeWhereInputFromJson(json);

  final Iterable<CakeWhereInput>? AND;

  final Iterable<CakeWhereInput>? OR;

  final Iterable<CakeWhereInput>? NOT;

  @JsonKey(name: r'CAKE_ID')
  final IntFilter? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final IntNullableFilter? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final StringFilter? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final StringNullableFilter? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final StringNullableFilter? ingredients;

  @JsonKey(name: r'URL')
  final StringNullableFilter? url;

  final BakeryRelationFilter? bakery;

  @override
  Map<String, dynamic> toJson() => _$CakeWhereInputToJson(this);
}

@_i1.jsonSerializable
class CakeOrderByWithRelationInput implements _i1.JsonSerializable {
  const CakeOrderByWithRelationInput({
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
    this.bakery,
  });

  factory CakeOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$CakeOrderByWithRelationInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final SortOrder? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final SortOrder? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final SortOrder? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final SortOrder? ingredients;

  @JsonKey(name: r'URL')
  final SortOrder? url;

  final BakeryOrderByWithRelationInput? bakery;

  @override
  Map<String, dynamic> toJson() => _$CakeOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class CakeWhereUniqueInput implements _i1.JsonSerializable {
  const CakeWhereUniqueInput({this.cakeId});

  factory CakeWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$CakeWhereUniqueInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final int? cakeId;

  @override
  Map<String, dynamic> toJson() => _$CakeWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class CakeOrderByWithAggregationInput implements _i1.JsonSerializable {
  const CakeOrderByWithAggregationInput({
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory CakeOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$CakeOrderByWithAggregationInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final SortOrder? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final SortOrder? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final SortOrder? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final SortOrder? ingredients;

  @JsonKey(name: r'URL')
  final SortOrder? url;

  @JsonKey(name: r'_count')
  final CakeCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final CakeAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final CakeMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final CakeMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final CakeSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class CakeScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const CakeScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<CakeScalarWhereWithAggregatesInput>? AND;

  final Iterable<CakeScalarWhereWithAggregatesInput>? OR;

  final Iterable<CakeScalarWhereWithAggregatesInput>? NOT;

  @JsonKey(name: r'CAKE_ID')
  final IntWithAggregatesFilter? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final IntNullableWithAggregatesFilter? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final StringWithAggregatesFilter? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final StringNullableWithAggregatesFilter? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final StringNullableWithAggregatesFilter? ingredients;

  @JsonKey(name: r'URL')
  final StringNullableWithAggregatesFilter? url;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class BakeryCreateInput implements _i1.JsonSerializable {
  const BakeryCreateInput({
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
    this.cake,
  });

  factory BakeryCreateInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryCreateInputFromJson(json);

  @JsonKey(name: r'BAKERY_NAME')
  final String? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final String? address;

  @JsonKey(name: r'DESCRIPTION')
  final String? description;

  @JsonKey(name: r'OPEN')
  final int? open;

  @JsonKey(name: r'CLOSE')
  final int? close;

  @JsonKey(name: r'URL')
  final String? url;

  final CakeCreateNestedManyWithoutBakeryInput? cake;

  @override
  Map<String, dynamic> toJson() => _$BakeryCreateInputToJson(this);
}

@_i1.jsonSerializable
class BakeryUncheckedCreateInput implements _i1.JsonSerializable {
  const BakeryUncheckedCreateInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
    this.cake,
  });

  factory BakeryUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryUncheckedCreateInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final int? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final String? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final String? address;

  @JsonKey(name: r'DESCRIPTION')
  final String? description;

  @JsonKey(name: r'OPEN')
  final int? open;

  @JsonKey(name: r'CLOSE')
  final int? close;

  @JsonKey(name: r'URL')
  final String? url;

  final CakeUncheckedCreateNestedManyWithoutBakeryInput? cake;

  @override
  Map<String, dynamic> toJson() => _$BakeryUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class BakeryUpdateInput implements _i1.JsonSerializable {
  const BakeryUpdateInput({
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
    this.cake,
  });

  factory BakeryUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryUpdateInputFromJson(json);

  @JsonKey(name: r'BAKERY_NAME')
  final NullableStringFieldUpdateOperationsInput? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final NullableStringFieldUpdateOperationsInput? address;

  @JsonKey(name: r'DESCRIPTION')
  final NullableStringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'OPEN')
  final NullableIntFieldUpdateOperationsInput? open;

  @JsonKey(name: r'CLOSE')
  final NullableIntFieldUpdateOperationsInput? close;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  final CakeUpdateManyWithoutBakeryNestedInput? cake;

  @override
  Map<String, dynamic> toJson() => _$BakeryUpdateInputToJson(this);
}

@_i1.jsonSerializable
class BakeryUncheckedUpdateInput implements _i1.JsonSerializable {
  const BakeryUncheckedUpdateInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
    this.cake,
  });

  factory BakeryUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryUncheckedUpdateInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final IntFieldUpdateOperationsInput? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final NullableStringFieldUpdateOperationsInput? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final NullableStringFieldUpdateOperationsInput? address;

  @JsonKey(name: r'DESCRIPTION')
  final NullableStringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'OPEN')
  final NullableIntFieldUpdateOperationsInput? open;

  @JsonKey(name: r'CLOSE')
  final NullableIntFieldUpdateOperationsInput? close;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  final CakeUncheckedUpdateManyWithoutBakeryNestedInput? cake;

  @override
  Map<String, dynamic> toJson() => _$BakeryUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class BakeryCreateManyInput implements _i1.JsonSerializable {
  const BakeryCreateManyInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryCreateManyInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final int? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final String? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final String? address;

  @JsonKey(name: r'DESCRIPTION')
  final String? description;

  @JsonKey(name: r'OPEN')
  final int? open;

  @JsonKey(name: r'CLOSE')
  final int? close;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$BakeryCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class BakeryUpdateManyMutationInput implements _i1.JsonSerializable {
  const BakeryUpdateManyMutationInput({
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryUpdateManyMutationInputFromJson(json);

  @JsonKey(name: r'BAKERY_NAME')
  final NullableStringFieldUpdateOperationsInput? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final NullableStringFieldUpdateOperationsInput? address;

  @JsonKey(name: r'DESCRIPTION')
  final NullableStringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'OPEN')
  final NullableIntFieldUpdateOperationsInput? open;

  @JsonKey(name: r'CLOSE')
  final NullableIntFieldUpdateOperationsInput? close;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  @override
  Map<String, dynamic> toJson() => _$BakeryUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class BakeryUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const BakeryUncheckedUpdateManyInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryUncheckedUpdateManyInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final IntFieldUpdateOperationsInput? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final NullableStringFieldUpdateOperationsInput? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final NullableStringFieldUpdateOperationsInput? address;

  @JsonKey(name: r'DESCRIPTION')
  final NullableStringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'OPEN')
  final NullableIntFieldUpdateOperationsInput? open;

  @JsonKey(name: r'CLOSE')
  final NullableIntFieldUpdateOperationsInput? close;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  @override
  Map<String, dynamic> toJson() => _$BakeryUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class CakeCreateInput implements _i1.JsonSerializable {
  const CakeCreateInput({
    required this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
    this.bakery,
  });

  factory CakeCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CakeCreateInputFromJson(json);

  @JsonKey(name: r'CAKE_NAME')
  final String cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final String? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final String? ingredients;

  @JsonKey(name: r'URL')
  final String? url;

  final BakeryCreateNestedOneWithoutCakeInput? bakery;

  @override
  Map<String, dynamic> toJson() => _$CakeCreateInputToJson(this);
}

@_i1.jsonSerializable
class CakeUncheckedCreateInput implements _i1.JsonSerializable {
  const CakeUncheckedCreateInput({
    this.cakeId,
    this.bakeryId,
    required this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CakeUncheckedCreateInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final int? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final int? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final String cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final String? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final String? ingredients;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$CakeUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class CakeUpdateInput implements _i1.JsonSerializable {
  const CakeUpdateInput({
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
    this.bakery,
  });

  factory CakeUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CakeUpdateInputFromJson(json);

  @JsonKey(name: r'CAKE_NAME')
  final StringFieldUpdateOperationsInput? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final NullableStringFieldUpdateOperationsInput? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final NullableStringFieldUpdateOperationsInput? ingredients;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  final BakeryUpdateOneWithoutCakeNestedInput? bakery;

  @override
  Map<String, dynamic> toJson() => _$CakeUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CakeUncheckedUpdateInput implements _i1.JsonSerializable {
  const CakeUncheckedUpdateInput({
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CakeUncheckedUpdateInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final IntFieldUpdateOperationsInput? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final NullableIntFieldUpdateOperationsInput? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final StringFieldUpdateOperationsInput? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final NullableStringFieldUpdateOperationsInput? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final NullableStringFieldUpdateOperationsInput? ingredients;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  @override
  Map<String, dynamic> toJson() => _$CakeUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CakeCreateManyInput implements _i1.JsonSerializable {
  const CakeCreateManyInput({
    this.cakeId,
    this.bakeryId,
    required this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CakeCreateManyInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final int? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final int? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final String cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final String? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final String? ingredients;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$CakeCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class CakeUpdateManyMutationInput implements _i1.JsonSerializable {
  const CakeUpdateManyMutationInput({
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$CakeUpdateManyMutationInputFromJson(json);

  @JsonKey(name: r'CAKE_NAME')
  final StringFieldUpdateOperationsInput? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final NullableStringFieldUpdateOperationsInput? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final NullableStringFieldUpdateOperationsInput? ingredients;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  @override
  Map<String, dynamic> toJson() => _$CakeUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class CakeUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const CakeUncheckedUpdateManyInput({
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CakeUncheckedUpdateManyInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final IntFieldUpdateOperationsInput? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final NullableIntFieldUpdateOperationsInput? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final StringFieldUpdateOperationsInput? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final NullableStringFieldUpdateOperationsInput? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final NullableStringFieldUpdateOperationsInput? ingredients;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  @override
  Map<String, dynamic> toJson() => _$CakeUncheckedUpdateManyInputToJson(this);
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
class StringNullableFilter implements _i1.JsonSerializable {
  const StringNullableFilter({
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

  factory StringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$StringNullableFilterFromJson(json);

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

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableFilter implements _i1.JsonSerializable {
  const IntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class CakeListRelationFilter implements _i1.JsonSerializable {
  const CakeListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory CakeListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CakeListRelationFilterFromJson(json);

  final CakeWhereInput? every;

  final CakeWhereInput? some;

  final CakeWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$CakeListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class SortOrderInput implements _i1.JsonSerializable {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  factory SortOrderInput.fromJson(Map<String, dynamic> json) =>
      _$SortOrderInputFromJson(json);

  final SortOrder sort;

  final NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => _$SortOrderInputToJson(this);
}

@_i1.jsonSerializable
class CakeOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const CakeOrderByRelationAggregateInput({this.$count});

  factory CakeOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BakeryCountOrderByAggregateInput implements _i1.JsonSerializable {
  const BakeryCountOrderByAggregateInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BakeryCountOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final SortOrder? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final SortOrder? address;

  @JsonKey(name: r'DESCRIPTION')
  final SortOrder? description;

  @JsonKey(name: r'OPEN')
  final SortOrder? open;

  @JsonKey(name: r'CLOSE')
  final SortOrder? close;

  @JsonKey(name: r'URL')
  final SortOrder? url;

  @override
  Map<String, dynamic> toJson() =>
      _$BakeryCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BakeryAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const BakeryAvgOrderByAggregateInput({
    this.bakeryId,
    this.open,
    this.close,
  });

  factory BakeryAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryAvgOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'OPEN')
  final SortOrder? open;

  @JsonKey(name: r'CLOSE')
  final SortOrder? close;

  @override
  Map<String, dynamic> toJson() => _$BakeryAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BakeryMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const BakeryMaxOrderByAggregateInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryMaxOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final SortOrder? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final SortOrder? address;

  @JsonKey(name: r'DESCRIPTION')
  final SortOrder? description;

  @JsonKey(name: r'OPEN')
  final SortOrder? open;

  @JsonKey(name: r'CLOSE')
  final SortOrder? close;

  @JsonKey(name: r'URL')
  final SortOrder? url;

  @override
  Map<String, dynamic> toJson() => _$BakeryMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BakeryMinOrderByAggregateInput implements _i1.JsonSerializable {
  const BakeryMinOrderByAggregateInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryMinOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final SortOrder? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final SortOrder? address;

  @JsonKey(name: r'DESCRIPTION')
  final SortOrder? description;

  @JsonKey(name: r'OPEN')
  final SortOrder? open;

  @JsonKey(name: r'CLOSE')
  final SortOrder? close;

  @JsonKey(name: r'URL')
  final SortOrder? url;

  @override
  Map<String, dynamic> toJson() => _$BakeryMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BakerySumOrderByAggregateInput implements _i1.JsonSerializable {
  const BakerySumOrderByAggregateInput({
    this.bakeryId,
    this.open,
    this.close,
  });

  factory BakerySumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$BakerySumOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'OPEN')
  final SortOrder? open;

  @JsonKey(name: r'CLOSE')
  final SortOrder? close;

  @override
  Map<String, dynamic> toJson() => _$BakerySumOrderByAggregateInputToJson(this);
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
class StringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const StringNullableWithAggregatesFilter({
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

  factory StringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$StringNullableWithAggregatesFilterFromJson(json);

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

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$StringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const IntNullableWithAggregatesFilter({
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

  factory IntNullableWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$IntNullableWithAggregatesFilterToJson(this);
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

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class BakeryRelationFilter implements _i1.JsonSerializable {
  const BakeryRelationFilter({
    this.$is,
    this.isNot,
  });

  factory BakeryRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$BakeryRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final BakeryWhereInput? $is;

  final BakeryWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$BakeryRelationFilterToJson(this);
}

@_i1.jsonSerializable
class CakeCountOrderByAggregateInput implements _i1.JsonSerializable {
  const CakeCountOrderByAggregateInput({
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CakeCountOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final SortOrder? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final SortOrder? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final SortOrder? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final SortOrder? ingredients;

  @JsonKey(name: r'URL')
  final SortOrder? url;

  @override
  Map<String, dynamic> toJson() => _$CakeCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CakeAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const CakeAvgOrderByAggregateInput({
    this.cakeId,
    this.bakeryId,
  });

  factory CakeAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CakeAvgOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final SortOrder? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @override
  Map<String, dynamic> toJson() => _$CakeAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CakeMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const CakeMaxOrderByAggregateInput({
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CakeMaxOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final SortOrder? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final SortOrder? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final SortOrder? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final SortOrder? ingredients;

  @JsonKey(name: r'URL')
  final SortOrder? url;

  @override
  Map<String, dynamic> toJson() => _$CakeMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CakeMinOrderByAggregateInput implements _i1.JsonSerializable {
  const CakeMinOrderByAggregateInput({
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CakeMinOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final SortOrder? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final SortOrder? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final SortOrder? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final SortOrder? ingredients;

  @JsonKey(name: r'URL')
  final SortOrder? url;

  @override
  Map<String, dynamic> toJson() => _$CakeMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CakeSumOrderByAggregateInput implements _i1.JsonSerializable {
  const CakeSumOrderByAggregateInput({
    this.cakeId,
    this.bakeryId,
  });

  factory CakeSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CakeSumOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final SortOrder? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final SortOrder? bakeryId;

  @override
  Map<String, dynamic> toJson() => _$CakeSumOrderByAggregateInputToJson(this);
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
class CakeCreateNestedManyWithoutBakeryInput implements _i1.JsonSerializable {
  const CakeCreateNestedManyWithoutBakeryInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory CakeCreateNestedManyWithoutBakeryInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeCreateNestedManyWithoutBakeryInputFromJson(json);

  final Iterable<CakeCreateWithoutBakeryInput>? create;

  final Iterable<CakeCreateOrConnectWithoutBakeryInput>? connectOrCreate;

  final CakeCreateManyBakeryInputEnvelope? createMany;

  final Iterable<CakeWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeCreateNestedManyWithoutBakeryInputToJson(this);
}

@_i1.jsonSerializable
class CakeUncheckedCreateNestedManyWithoutBakeryInput
    implements _i1.JsonSerializable {
  const CakeUncheckedCreateNestedManyWithoutBakeryInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory CakeUncheckedCreateNestedManyWithoutBakeryInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeUncheckedCreateNestedManyWithoutBakeryInputFromJson(json);

  final Iterable<CakeCreateWithoutBakeryInput>? create;

  final Iterable<CakeCreateOrConnectWithoutBakeryInput>? connectOrCreate;

  final CakeCreateManyBakeryInputEnvelope? createMany;

  final Iterable<CakeWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeUncheckedCreateNestedManyWithoutBakeryInputToJson(this);
}

@_i1.jsonSerializable
class NullableStringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableStringFieldUpdateOperationsInput({this.set});

  factory NullableStringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableStringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableStringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory NullableIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableIntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class CakeUpdateManyWithoutBakeryNestedInput implements _i1.JsonSerializable {
  const CakeUpdateManyWithoutBakeryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory CakeUpdateManyWithoutBakeryNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeUpdateManyWithoutBakeryNestedInputFromJson(json);

  final Iterable<CakeCreateWithoutBakeryInput>? create;

  final Iterable<CakeCreateOrConnectWithoutBakeryInput>? connectOrCreate;

  final Iterable<CakeUpsertWithWhereUniqueWithoutBakeryInput>? upsert;

  final CakeCreateManyBakeryInputEnvelope? createMany;

  final Iterable<CakeWhereUniqueInput>? set;

  final Iterable<CakeWhereUniqueInput>? disconnect;

  final Iterable<CakeWhereUniqueInput>? delete;

  final Iterable<CakeWhereUniqueInput>? connect;

  final Iterable<CakeUpdateWithWhereUniqueWithoutBakeryInput>? update;

  final Iterable<CakeUpdateManyWithWhereWithoutBakeryInput>? updateMany;

  final Iterable<CakeScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeUpdateManyWithoutBakeryNestedInputToJson(this);
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
class CakeUncheckedUpdateManyWithoutBakeryNestedInput
    implements _i1.JsonSerializable {
  const CakeUncheckedUpdateManyWithoutBakeryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory CakeUncheckedUpdateManyWithoutBakeryNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeUncheckedUpdateManyWithoutBakeryNestedInputFromJson(json);

  final Iterable<CakeCreateWithoutBakeryInput>? create;

  final Iterable<CakeCreateOrConnectWithoutBakeryInput>? connectOrCreate;

  final Iterable<CakeUpsertWithWhereUniqueWithoutBakeryInput>? upsert;

  final CakeCreateManyBakeryInputEnvelope? createMany;

  final Iterable<CakeWhereUniqueInput>? set;

  final Iterable<CakeWhereUniqueInput>? disconnect;

  final Iterable<CakeWhereUniqueInput>? delete;

  final Iterable<CakeWhereUniqueInput>? connect;

  final Iterable<CakeUpdateWithWhereUniqueWithoutBakeryInput>? update;

  final Iterable<CakeUpdateManyWithWhereWithoutBakeryInput>? updateMany;

  final Iterable<CakeScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeUncheckedUpdateManyWithoutBakeryNestedInputToJson(this);
}

@_i1.jsonSerializable
class BakeryCreateNestedOneWithoutCakeInput implements _i1.JsonSerializable {
  const BakeryCreateNestedOneWithoutCakeInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory BakeryCreateNestedOneWithoutCakeInput.fromJson(
          Map<String, dynamic> json) =>
      _$BakeryCreateNestedOneWithoutCakeInputFromJson(json);

  final BakeryCreateWithoutCakeInput? create;

  final BakeryCreateOrConnectWithoutCakeInput? connectOrCreate;

  final BakeryWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$BakeryCreateNestedOneWithoutCakeInputToJson(this);
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
class BakeryUpdateOneWithoutCakeNestedInput implements _i1.JsonSerializable {
  const BakeryUpdateOneWithoutCakeNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  factory BakeryUpdateOneWithoutCakeNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$BakeryUpdateOneWithoutCakeNestedInputFromJson(json);

  final BakeryCreateWithoutCakeInput? create;

  final BakeryCreateOrConnectWithoutCakeInput? connectOrCreate;

  final BakeryUpsertWithoutCakeInput? upsert;

  final bool? disconnect;

  final bool? delete;

  final BakeryWhereUniqueInput? connect;

  final BakeryUpdateWithoutCakeInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$BakeryUpdateOneWithoutCakeNestedInputToJson(this);
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
class NestedStringNullableFilter implements _i1.JsonSerializable {
  const NestedStringNullableFilter({
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

  factory NestedStringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringNullableFilterFromJson(json);

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

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
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
class NestedStringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringNullableWithAggregatesFilter({
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

  factory NestedStringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringNullableWithAggregatesFilterFromJson(json);

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

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntNullableWithAggregatesFilter({
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

  factory NestedIntNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedIntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedIntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatNullableFilter implements _i1.JsonSerializable {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatNullableFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatNullableFilterToJson(this);
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
class CakeCreateWithoutBakeryInput implements _i1.JsonSerializable {
  const CakeCreateWithoutBakeryInput({
    required this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeCreateWithoutBakeryInput.fromJson(Map<String, dynamic> json) =>
      _$CakeCreateWithoutBakeryInputFromJson(json);

  @JsonKey(name: r'CAKE_NAME')
  final String cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final String? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final String? ingredients;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$CakeCreateWithoutBakeryInputToJson(this);
}

@_i1.jsonSerializable
class CakeUncheckedCreateWithoutBakeryInput implements _i1.JsonSerializable {
  const CakeUncheckedCreateWithoutBakeryInput({
    this.cakeId,
    required this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeUncheckedCreateWithoutBakeryInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeUncheckedCreateWithoutBakeryInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final int? cakeId;

  @JsonKey(name: r'CAKE_NAME')
  final String cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final String? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final String? ingredients;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeUncheckedCreateWithoutBakeryInputToJson(this);
}

@_i1.jsonSerializable
class CakeCreateOrConnectWithoutBakeryInput implements _i1.JsonSerializable {
  const CakeCreateOrConnectWithoutBakeryInput({
    required this.where,
    required this.create,
  });

  factory CakeCreateOrConnectWithoutBakeryInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeCreateOrConnectWithoutBakeryInputFromJson(json);

  final CakeWhereUniqueInput where;

  final CakeCreateWithoutBakeryInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeCreateOrConnectWithoutBakeryInputToJson(this);
}

@_i1.jsonSerializable
class CakeCreateManyBakeryInputEnvelope implements _i1.JsonSerializable {
  const CakeCreateManyBakeryInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory CakeCreateManyBakeryInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$CakeCreateManyBakeryInputEnvelopeFromJson(json);

  final Iterable<CakeCreateManyBakeryInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeCreateManyBakeryInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class CakeUpsertWithWhereUniqueWithoutBakeryInput
    implements _i1.JsonSerializable {
  const CakeUpsertWithWhereUniqueWithoutBakeryInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory CakeUpsertWithWhereUniqueWithoutBakeryInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeUpsertWithWhereUniqueWithoutBakeryInputFromJson(json);

  final CakeWhereUniqueInput where;

  final CakeUpdateWithoutBakeryInput update;

  final CakeCreateWithoutBakeryInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeUpsertWithWhereUniqueWithoutBakeryInputToJson(this);
}

@_i1.jsonSerializable
class CakeUpdateWithWhereUniqueWithoutBakeryInput
    implements _i1.JsonSerializable {
  const CakeUpdateWithWhereUniqueWithoutBakeryInput({
    required this.where,
    required this.data,
  });

  factory CakeUpdateWithWhereUniqueWithoutBakeryInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeUpdateWithWhereUniqueWithoutBakeryInputFromJson(json);

  final CakeWhereUniqueInput where;

  final CakeUpdateWithoutBakeryInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeUpdateWithWhereUniqueWithoutBakeryInputToJson(this);
}

@_i1.jsonSerializable
class CakeUpdateManyWithWhereWithoutBakeryInput
    implements _i1.JsonSerializable {
  const CakeUpdateManyWithWhereWithoutBakeryInput({
    required this.where,
    required this.data,
  });

  factory CakeUpdateManyWithWhereWithoutBakeryInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeUpdateManyWithWhereWithoutBakeryInputFromJson(json);

  final CakeScalarWhereInput where;

  final CakeUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeUpdateManyWithWhereWithoutBakeryInputToJson(this);
}

@_i1.jsonSerializable
class CakeScalarWhereInput implements _i1.JsonSerializable {
  const CakeScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CakeScalarWhereInputFromJson(json);

  final Iterable<CakeScalarWhereInput>? AND;

  final Iterable<CakeScalarWhereInput>? OR;

  final Iterable<CakeScalarWhereInput>? NOT;

  @JsonKey(name: r'CAKE_ID')
  final IntFilter? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final IntNullableFilter? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final StringFilter? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final StringNullableFilter? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final StringNullableFilter? ingredients;

  @JsonKey(name: r'URL')
  final StringNullableFilter? url;

  @override
  Map<String, dynamic> toJson() => _$CakeScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class BakeryCreateWithoutCakeInput implements _i1.JsonSerializable {
  const BakeryCreateWithoutCakeInput({
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryCreateWithoutCakeInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryCreateWithoutCakeInputFromJson(json);

  @JsonKey(name: r'BAKERY_NAME')
  final String? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final String? address;

  @JsonKey(name: r'DESCRIPTION')
  final String? description;

  @JsonKey(name: r'OPEN')
  final int? open;

  @JsonKey(name: r'CLOSE')
  final int? close;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$BakeryCreateWithoutCakeInputToJson(this);
}

@_i1.jsonSerializable
class BakeryUncheckedCreateWithoutCakeInput implements _i1.JsonSerializable {
  const BakeryUncheckedCreateWithoutCakeInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryUncheckedCreateWithoutCakeInput.fromJson(
          Map<String, dynamic> json) =>
      _$BakeryUncheckedCreateWithoutCakeInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final int? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final String? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final String? address;

  @JsonKey(name: r'DESCRIPTION')
  final String? description;

  @JsonKey(name: r'OPEN')
  final int? open;

  @JsonKey(name: r'CLOSE')
  final int? close;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() =>
      _$BakeryUncheckedCreateWithoutCakeInputToJson(this);
}

@_i1.jsonSerializable
class BakeryCreateOrConnectWithoutCakeInput implements _i1.JsonSerializable {
  const BakeryCreateOrConnectWithoutCakeInput({
    required this.where,
    required this.create,
  });

  factory BakeryCreateOrConnectWithoutCakeInput.fromJson(
          Map<String, dynamic> json) =>
      _$BakeryCreateOrConnectWithoutCakeInputFromJson(json);

  final BakeryWhereUniqueInput where;

  final BakeryCreateWithoutCakeInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$BakeryCreateOrConnectWithoutCakeInputToJson(this);
}

@_i1.jsonSerializable
class BakeryUpsertWithoutCakeInput implements _i1.JsonSerializable {
  const BakeryUpsertWithoutCakeInput({
    required this.update,
    required this.create,
  });

  factory BakeryUpsertWithoutCakeInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryUpsertWithoutCakeInputFromJson(json);

  final BakeryUpdateWithoutCakeInput update;

  final BakeryCreateWithoutCakeInput create;

  @override
  Map<String, dynamic> toJson() => _$BakeryUpsertWithoutCakeInputToJson(this);
}

@_i1.jsonSerializable
class BakeryUpdateWithoutCakeInput implements _i1.JsonSerializable {
  const BakeryUpdateWithoutCakeInput({
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryUpdateWithoutCakeInput.fromJson(Map<String, dynamic> json) =>
      _$BakeryUpdateWithoutCakeInputFromJson(json);

  @JsonKey(name: r'BAKERY_NAME')
  final NullableStringFieldUpdateOperationsInput? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final NullableStringFieldUpdateOperationsInput? address;

  @JsonKey(name: r'DESCRIPTION')
  final NullableStringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'OPEN')
  final NullableIntFieldUpdateOperationsInput? open;

  @JsonKey(name: r'CLOSE')
  final NullableIntFieldUpdateOperationsInput? close;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  @override
  Map<String, dynamic> toJson() => _$BakeryUpdateWithoutCakeInputToJson(this);
}

@_i1.jsonSerializable
class BakeryUncheckedUpdateWithoutCakeInput implements _i1.JsonSerializable {
  const BakeryUncheckedUpdateWithoutCakeInput({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryUncheckedUpdateWithoutCakeInput.fromJson(
          Map<String, dynamic> json) =>
      _$BakeryUncheckedUpdateWithoutCakeInputFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final IntFieldUpdateOperationsInput? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final NullableStringFieldUpdateOperationsInput? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final NullableStringFieldUpdateOperationsInput? address;

  @JsonKey(name: r'DESCRIPTION')
  final NullableStringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'OPEN')
  final NullableIntFieldUpdateOperationsInput? open;

  @JsonKey(name: r'CLOSE')
  final NullableIntFieldUpdateOperationsInput? close;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  @override
  Map<String, dynamic> toJson() =>
      _$BakeryUncheckedUpdateWithoutCakeInputToJson(this);
}

@_i1.jsonSerializable
class CakeCreateManyBakeryInput implements _i1.JsonSerializable {
  const CakeCreateManyBakeryInput({
    this.cakeId,
    required this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeCreateManyBakeryInput.fromJson(Map<String, dynamic> json) =>
      _$CakeCreateManyBakeryInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final int? cakeId;

  @JsonKey(name: r'CAKE_NAME')
  final String cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final String? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final String? ingredients;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$CakeCreateManyBakeryInputToJson(this);
}

@_i1.jsonSerializable
class CakeUpdateWithoutBakeryInput implements _i1.JsonSerializable {
  const CakeUpdateWithoutBakeryInput({
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeUpdateWithoutBakeryInput.fromJson(Map<String, dynamic> json) =>
      _$CakeUpdateWithoutBakeryInputFromJson(json);

  @JsonKey(name: r'CAKE_NAME')
  final StringFieldUpdateOperationsInput? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final NullableStringFieldUpdateOperationsInput? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final NullableStringFieldUpdateOperationsInput? ingredients;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  @override
  Map<String, dynamic> toJson() => _$CakeUpdateWithoutBakeryInputToJson(this);
}

@_i1.jsonSerializable
class CakeUncheckedUpdateWithoutBakeryInput implements _i1.JsonSerializable {
  const CakeUncheckedUpdateWithoutBakeryInput({
    this.cakeId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeUncheckedUpdateWithoutBakeryInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeUncheckedUpdateWithoutBakeryInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final IntFieldUpdateOperationsInput? cakeId;

  @JsonKey(name: r'CAKE_NAME')
  final StringFieldUpdateOperationsInput? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final NullableStringFieldUpdateOperationsInput? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final NullableStringFieldUpdateOperationsInput? ingredients;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeUncheckedUpdateWithoutBakeryInputToJson(this);
}

@_i1.jsonSerializable
class CakeUncheckedUpdateManyWithoutCakeInput implements _i1.JsonSerializable {
  const CakeUncheckedUpdateManyWithoutCakeInput({
    this.cakeId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeUncheckedUpdateManyWithoutCakeInput.fromJson(
          Map<String, dynamic> json) =>
      _$CakeUncheckedUpdateManyWithoutCakeInputFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final IntFieldUpdateOperationsInput? cakeId;

  @JsonKey(name: r'CAKE_NAME')
  final StringFieldUpdateOperationsInput? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final NullableStringFieldUpdateOperationsInput? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final NullableStringFieldUpdateOperationsInput? ingredients;

  @JsonKey(name: r'URL')
  final NullableStringFieldUpdateOperationsInput? url;

  @override
  Map<String, dynamic> toJson() =>
      _$CakeUncheckedUpdateManyWithoutCakeInputToJson(this);
}

@_i1.jsonSerializable
class Bakery implements _i1.JsonSerializable {
  const Bakery({
    required this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory Bakery.fromJson(Map<String, dynamic> json) => _$BakeryFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final int bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final String? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final String? address;

  @JsonKey(name: r'DESCRIPTION')
  final String? description;

  @JsonKey(name: r'OPEN')
  final int? open;

  @JsonKey(name: r'CLOSE')
  final int? close;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$BakeryToJson(this);
}

@_i1.jsonSerializable
class Cake implements _i1.JsonSerializable {
  const Cake({
    required this.cakeId,
    this.bakeryId,
    required this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory Cake.fromJson(Map<String, dynamic> json) => _$CakeFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final int cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final int? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final String cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final String? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final String? ingredients;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$CakeToJson(this);
}

class BakeryFluent<T> extends _i1.PrismaFluent<T> {
  const BakeryFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Cake>?> cake({
    CakeWhereInput? where,
    Iterable<CakeOrderByWithRelationInput>? orderBy,
    CakeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CakeScalarFieldEnum>? distinct,
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
          r'cake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'cake',
    );
    final fields = CakeScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> cake) =>
        cake.map((Map cake) => Cake.fromJson(cake.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  BakeryCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return BakeryCountOutputType(query);
  }
}

class CakeFluent<T> extends _i1.PrismaFluent<T> {
  const CakeFluent(
    super.original,
    super.$query,
  );

  BakeryFluent<Bakery?> bakery() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'bakery',
          fields: fields,
        )
      ]),
      key: r'bakery',
    );
    final future = query(BakeryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Bakery.fromJson(json.cast<String, dynamic>()) : null);
    return BakeryFluent<Bakery?>(
      future,
      query,
    );
  }
}

extension BakeryModelDelegateExtension on _i1.ModelDelegate<Bakery> {
  BakeryFluent<Bakery?> findUnique({required BakeryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquebakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquebakery',
    );
    final future = query(BakeryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Bakery.fromJson(json.cast<String, dynamic>()) : null);
    return BakeryFluent<Bakery?>(
      future,
      query,
    );
  }

  BakeryFluent<Bakery> findUniqueOrThrow(
      {required BakeryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquebakeryOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquebakeryOrThrow',
    );
    final future = query(BakeryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Bakery.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: bakery)'));
    return BakeryFluent<Bakery>(
      future,
      query,
    );
  }

  BakeryFluent<Bakery?> findFirst({
    BakeryWhereInput? where,
    Iterable<BakeryOrderByWithRelationInput>? orderBy,
    BakeryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BakeryScalarFieldEnum>? distinct,
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
          r'findFirstbakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstbakery',
    );
    final future = query(BakeryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Bakery.fromJson(json.cast<String, dynamic>()) : null);
    return BakeryFluent<Bakery?>(
      future,
      query,
    );
  }

  BakeryFluent<Bakery> findFirstOrThrow({
    BakeryWhereInput? where,
    Iterable<BakeryOrderByWithRelationInput>? orderBy,
    BakeryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BakeryScalarFieldEnum>? distinct,
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
          r'findFirstbakeryOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstbakeryOrThrow',
    );
    final future = query(BakeryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Bakery.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: bakery)'));
    return BakeryFluent<Bakery>(
      future,
      query,
    );
  }

  Future<Iterable<Bakery>> findMany({
    BakeryWhereInput? where,
    Iterable<BakeryOrderByWithRelationInput>? orderBy,
    BakeryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BakeryScalarFieldEnum>? distinct,
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
          r'findManybakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManybakery',
    );
    final fields = BakeryScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManybakery) => findManybakery
        .map((Map findManybakery) => Bakery.fromJson(findManybakery.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  BakeryFluent<Bakery> create({BakeryCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnebakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnebakery',
    );
    final future = query(BakeryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Bakery.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: bakery)'));
    return BakeryFluent<Bakery>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<BakeryCreateManyInput> data,
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
          r'createManybakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManybakery',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManybakery) =>
        AffectedRowsOutput.fromJson(createManybakery.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  BakeryFluent<Bakery?> update({
    required BakeryUpdateInput data,
    required BakeryWhereUniqueInput where,
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
          r'updateOnebakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnebakery',
    );
    final future = query(BakeryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Bakery.fromJson(json.cast<String, dynamic>()) : null);
    return BakeryFluent<Bakery?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required BakeryUpdateManyMutationInput data,
    BakeryWhereInput? where,
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
          r'updateManybakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManybakery',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManybakery) =>
        AffectedRowsOutput.fromJson(updateManybakery.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  BakeryFluent<Bakery> upsert({
    required BakeryWhereUniqueInput where,
    required BakeryCreateInput create,
    required BakeryUpdateInput update,
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
          r'upsertOnebakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnebakery',
    );
    final future = query(BakeryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Bakery.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: bakery)'));
    return BakeryFluent<Bakery>(
      future,
      query,
    );
  }

  BakeryFluent<Bakery?> delete({required BakeryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnebakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnebakery',
    );
    final future = query(BakeryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Bakery.fromJson(json.cast<String, dynamic>()) : null);
    return BakeryFluent<Bakery?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({BakeryWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManybakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManybakery',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManybakery) =>
        AffectedRowsOutput.fromJson(deleteManybakery.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateBakery aggregate({
    BakeryWhereInput? where,
    Iterable<BakeryOrderByWithRelationInput>? orderBy,
    BakeryWhereUniqueInput? cursor,
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
          r'aggregatebakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatebakery',
    );
    return AggregateBakery(query);
  }

  Future<Iterable<BakeryGroupByOutputType>> groupBy({
    BakeryWhereInput? where,
    Iterable<BakeryOrderByWithAggregationInput>? orderBy,
    required Iterable<BakeryScalarFieldEnum> by,
    BakeryScalarWhereWithAggregatesInput? having,
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
          r'groupBybakery',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBybakery',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBybakery) =>
        groupBybakery.map((Map groupBybakery) =>
            BakeryGroupByOutputType.fromJson(groupBybakery.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension CakeModelDelegateExtension on _i1.ModelDelegate<Cake> {
  CakeFluent<Cake?> findUnique({required CakeWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecake',
    );
    final future = query(CakeScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Cake.fromJson(json.cast<String, dynamic>()) : null);
    return CakeFluent<Cake?>(
      future,
      query,
    );
  }

  CakeFluent<Cake> findUniqueOrThrow({required CakeWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecakeOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecakeOrThrow',
    );
    final future = query(CakeScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Cake.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: cake)'));
    return CakeFluent<Cake>(
      future,
      query,
    );
  }

  CakeFluent<Cake?> findFirst({
    CakeWhereInput? where,
    Iterable<CakeOrderByWithRelationInput>? orderBy,
    CakeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CakeScalarFieldEnum>? distinct,
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
          r'findFirstcake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcake',
    );
    final future = query(CakeScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Cake.fromJson(json.cast<String, dynamic>()) : null);
    return CakeFluent<Cake?>(
      future,
      query,
    );
  }

  CakeFluent<Cake> findFirstOrThrow({
    CakeWhereInput? where,
    Iterable<CakeOrderByWithRelationInput>? orderBy,
    CakeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CakeScalarFieldEnum>? distinct,
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
          r'findFirstcakeOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcakeOrThrow',
    );
    final future = query(CakeScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Cake.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: cake)'));
    return CakeFluent<Cake>(
      future,
      query,
    );
  }

  Future<Iterable<Cake>> findMany({
    CakeWhereInput? where,
    Iterable<CakeOrderByWithRelationInput>? orderBy,
    CakeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CakeScalarFieldEnum>? distinct,
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
          r'findManycake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManycake',
    );
    final fields = CakeScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManycake) => findManycake
        .map((Map findManycake) => Cake.fromJson(findManycake.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  CakeFluent<Cake> create({required CakeCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnecake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnecake',
    );
    final future = query(CakeScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Cake.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: cake)'));
    return CakeFluent<Cake>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<CakeCreateManyInput> data,
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
          r'createManycake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManycake',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManycake) =>
        AffectedRowsOutput.fromJson(createManycake.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CakeFluent<Cake?> update({
    required CakeUpdateInput data,
    required CakeWhereUniqueInput where,
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
          r'updateOnecake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnecake',
    );
    final future = query(CakeScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Cake.fromJson(json.cast<String, dynamic>()) : null);
    return CakeFluent<Cake?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required CakeUpdateManyMutationInput data,
    CakeWhereInput? where,
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
          r'updateManycake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManycake',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManycake) =>
        AffectedRowsOutput.fromJson(updateManycake.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CakeFluent<Cake> upsert({
    required CakeWhereUniqueInput where,
    required CakeCreateInput create,
    required CakeUpdateInput update,
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
          r'upsertOnecake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnecake',
    );
    final future = query(CakeScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Cake.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: cake)'));
    return CakeFluent<Cake>(
      future,
      query,
    );
  }

  CakeFluent<Cake?> delete({required CakeWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnecake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnecake',
    );
    final future = query(CakeScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Cake.fromJson(json.cast<String, dynamic>()) : null);
    return CakeFluent<Cake?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({CakeWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManycake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManycake',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManycake) =>
        AffectedRowsOutput.fromJson(deleteManycake.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateCake aggregate({
    CakeWhereInput? where,
    Iterable<CakeOrderByWithRelationInput>? orderBy,
    CakeWhereUniqueInput? cursor,
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
          r'aggregatecake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatecake',
    );
    return AggregateCake(query);
  }

  Future<Iterable<CakeGroupByOutputType>> groupBy({
    CakeWhereInput? where,
    Iterable<CakeOrderByWithAggregationInput>? orderBy,
    required Iterable<CakeScalarFieldEnum> by,
    CakeScalarWhereWithAggregatesInput? having,
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
          r'groupBycake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBycake',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBycake) => groupBycake.map((Map groupBycake) =>
        CakeGroupByOutputType.fromJson(groupBycake.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class BakeryGroupByOutputType implements _i1.JsonSerializable {
  const BakeryGroupByOutputType({
    this.bakeryId,
    this.bakeryName,
    this.address,
    this.description,
    this.open,
    this.close,
    this.url,
  });

  factory BakeryGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$BakeryGroupByOutputTypeFromJson(json);

  @JsonKey(name: r'BAKERY_ID')
  final int? bakeryId;

  @JsonKey(name: r'BAKERY_NAME')
  final String? bakeryName;

  @JsonKey(name: r'ADDRESS')
  final String? address;

  @JsonKey(name: r'DESCRIPTION')
  final String? description;

  @JsonKey(name: r'OPEN')
  final int? open;

  @JsonKey(name: r'CLOSE')
  final int? close;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$BakeryGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class CakeGroupByOutputType implements _i1.JsonSerializable {
  const CakeGroupByOutputType({
    this.cakeId,
    this.bakeryId,
    this.cakeName,
    this.cakeCategory,
    this.ingredients,
    this.url,
  });

  factory CakeGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$CakeGroupByOutputTypeFromJson(json);

  @JsonKey(name: r'CAKE_ID')
  final int? cakeId;

  @JsonKey(name: r'BAKERY_ID')
  final int? bakeryId;

  @JsonKey(name: r'CAKE_NAME')
  final String? cakeName;

  @JsonKey(name: r'CAKE_CATEGORY')
  final String? cakeCategory;

  @JsonKey(name: r'INGREDIENTS')
  final String? ingredients;

  @JsonKey(name: r'URL')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$CakeGroupByOutputTypeToJson(this);
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

class AggregateBakery {
  const AggregateBakery(this.$query);

  final _i1.PrismaFluentQuery $query;

  BakeryCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return BakeryCountAggregateOutputType(query);
  }

  BakeryAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return BakeryAvgAggregateOutputType(query);
  }

  BakerySumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return BakerySumAggregateOutputType(query);
  }

  BakeryMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return BakeryMinAggregateOutputType(query);
  }

  BakeryMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return BakeryMaxAggregateOutputType(query);
  }
}

class AggregateCake {
  const AggregateCake(this.$query);

  final _i1.PrismaFluentQuery $query;

  CakeCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CakeCountAggregateOutputType(query);
  }

  CakeAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return CakeAvgAggregateOutputType(query);
  }

  CakeSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return CakeSumAggregateOutputType(query);
  }

  CakeMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return CakeMinAggregateOutputType(query);
  }

  CakeMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return CakeMaxAggregateOutputType(query);
  }
}

class BakeryCountOutputType {
  const BakeryCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> cake({CakeWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cake',
          fields: fields,
          args: args,
        )
      ]),
      key: r'cake',
    );
    return query(const []).then((value) => (value as int));
  }
}

class BakeryCountAggregateOutputType {
  const BakeryCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> bakeryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_ID',
          fields: fields,
        )
      ]),
      key: r'BAKERY_ID',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> bakeryName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_NAME',
          fields: fields,
        )
      ]),
      key: r'BAKERY_NAME',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> address() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ADDRESS',
          fields: fields,
        )
      ]),
      key: r'ADDRESS',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> description() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DESCRIPTION',
          fields: fields,
        )
      ]),
      key: r'DESCRIPTION',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> open() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'OPEN',
          fields: fields,
        )
      ]),
      key: r'OPEN',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> close() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CLOSE',
          fields: fields,
        )
      ]),
      key: r'CLOSE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> url() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'URL',
          fields: fields,
        )
      ]),
      key: r'URL',
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

class BakeryAvgAggregateOutputType {
  const BakeryAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> bakeryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_ID',
          fields: fields,
        )
      ]),
      key: r'BAKERY_ID',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> open() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'OPEN',
          fields: fields,
        )
      ]),
      key: r'OPEN',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> close() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CLOSE',
          fields: fields,
        )
      ]),
      key: r'CLOSE',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class BakerySumAggregateOutputType {
  const BakerySumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> bakeryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_ID',
          fields: fields,
        )
      ]),
      key: r'BAKERY_ID',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> open() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'OPEN',
          fields: fields,
        )
      ]),
      key: r'OPEN',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> close() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CLOSE',
          fields: fields,
        )
      ]),
      key: r'CLOSE',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class BakeryMinAggregateOutputType {
  const BakeryMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> bakeryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_ID',
          fields: fields,
        )
      ]),
      key: r'BAKERY_ID',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> bakeryName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_NAME',
          fields: fields,
        )
      ]),
      key: r'BAKERY_NAME',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> address() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ADDRESS',
          fields: fields,
        )
      ]),
      key: r'ADDRESS',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> description() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DESCRIPTION',
          fields: fields,
        )
      ]),
      key: r'DESCRIPTION',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> open() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'OPEN',
          fields: fields,
        )
      ]),
      key: r'OPEN',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> close() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CLOSE',
          fields: fields,
        )
      ]),
      key: r'CLOSE',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> url() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'URL',
          fields: fields,
        )
      ]),
      key: r'URL',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class BakeryMaxAggregateOutputType {
  const BakeryMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> bakeryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_ID',
          fields: fields,
        )
      ]),
      key: r'BAKERY_ID',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> bakeryName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_NAME',
          fields: fields,
        )
      ]),
      key: r'BAKERY_NAME',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> address() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ADDRESS',
          fields: fields,
        )
      ]),
      key: r'ADDRESS',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> description() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DESCRIPTION',
          fields: fields,
        )
      ]),
      key: r'DESCRIPTION',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> open() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'OPEN',
          fields: fields,
        )
      ]),
      key: r'OPEN',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> close() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CLOSE',
          fields: fields,
        )
      ]),
      key: r'CLOSE',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> url() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'URL',
          fields: fields,
        )
      ]),
      key: r'URL',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class CakeCountAggregateOutputType {
  const CakeCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> cakeId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_ID',
          fields: fields,
        )
      ]),
      key: r'CAKE_ID',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> bakeryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_ID',
          fields: fields,
        )
      ]),
      key: r'BAKERY_ID',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> cakeName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_NAME',
          fields: fields,
        )
      ]),
      key: r'CAKE_NAME',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> cakeCategory() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_CATEGORY',
          fields: fields,
        )
      ]),
      key: r'CAKE_CATEGORY',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> ingredients() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'INGREDIENTS',
          fields: fields,
        )
      ]),
      key: r'INGREDIENTS',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> url() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'URL',
          fields: fields,
        )
      ]),
      key: r'URL',
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

class CakeAvgAggregateOutputType {
  const CakeAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> cakeId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_ID',
          fields: fields,
        )
      ]),
      key: r'CAKE_ID',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> bakeryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_ID',
          fields: fields,
        )
      ]),
      key: r'BAKERY_ID',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class CakeSumAggregateOutputType {
  const CakeSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> cakeId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_ID',
          fields: fields,
        )
      ]),
      key: r'CAKE_ID',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> bakeryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_ID',
          fields: fields,
        )
      ]),
      key: r'BAKERY_ID',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class CakeMinAggregateOutputType {
  const CakeMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> cakeId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_ID',
          fields: fields,
        )
      ]),
      key: r'CAKE_ID',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> bakeryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_ID',
          fields: fields,
        )
      ]),
      key: r'BAKERY_ID',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> cakeName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_NAME',
          fields: fields,
        )
      ]),
      key: r'CAKE_NAME',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> cakeCategory() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_CATEGORY',
          fields: fields,
        )
      ]),
      key: r'CAKE_CATEGORY',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> ingredients() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'INGREDIENTS',
          fields: fields,
        )
      ]),
      key: r'INGREDIENTS',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> url() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'URL',
          fields: fields,
        )
      ]),
      key: r'URL',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class CakeMaxAggregateOutputType {
  const CakeMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> cakeId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_ID',
          fields: fields,
        )
      ]),
      key: r'CAKE_ID',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> bakeryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BAKERY_ID',
          fields: fields,
        )
      ]),
      key: r'BAKERY_ID',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> cakeName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_NAME',
          fields: fields,
        )
      ]),
      key: r'CAKE_NAME',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> cakeCategory() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CAKE_CATEGORY',
          fields: fields,
        )
      ]),
      key: r'CAKE_CATEGORY',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> ingredients() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'INGREDIENTS',
          fields: fields,
        )
      ]),
      key: r'INGREDIENTS',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> url() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'URL',
          fields: fields,
        )
      ]),
      key: r'URL',
    );
    return query(const []).then((value) => (value as String?));
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
          r'Z2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJteXNxbCIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKbW9kZWwgYmFrZXJ5IHsKICBCQUtFUllfSUQgICBJbnQgICAgIEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgQkFLRVJZX05BTUUgU3RyaW5nPyBAZGIuVmFyQ2hhcigyNTUpCiAgQUREUkVTUyAgICAgU3RyaW5nPyBAZGIuVmFyQ2hhcigyNTUpCiAgREVTQ1JJUFRJT04gU3RyaW5nPyBAZGIuVGV4dAogIE9QRU4gICAgICAgIEludD8KICBDTE9TRSAgICAgICBJbnQ/CiAgVVJMICAgICAgICAgU3RyaW5nPyBAZGIuVmFyQ2hhcigyNTUpCiAgY2FrZSAgICAgICAgY2FrZVtdCn0KCm1vZGVsIGNha2UgewogIENBS0VfSUQgICAgICAgSW50ICAgICBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogIEJBS0VSWV9JRCAgICAgSW50PwogIENBS0VfTkFNRSAgICAgU3RyaW5nICBAZGIuVmFyQ2hhcigyNTUpCiAgQ0FLRV9DQVRFR09SWSBTdHJpbmc/IEBkYi5WYXJDaGFyKDI1NSkKICBJTkdSRURJRU5UUyAgIFN0cmluZz8gQGRiLlRleHQKICBVUkwgICAgICAgICAgIFN0cmluZz8gQGRiLlZhckNoYXIoMjU1KQogIGJha2VyeSAgICAgICAgYmFrZXJ5PyBAcmVsYXRpb24oZmllbGRzOiBbQkFLRVJZX0lEXSwgcmVmZXJlbmNlczogW0JBS0VSWV9JRF0sIG9uRGVsZXRlOiBOb0FjdGlvbiwgb25VcGRhdGU6IE5vQWN0aW9uLCBtYXA6ICJjYWtlX2liZmtfMSIpCgogIEBAaW5kZXgoW0JBS0VSWV9JRF0sIG1hcDogIkJBS0VSWV9JRCIpCn0K',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'/Users/lizusha/Desktop/study/for_flutter/flutter_back/cakeshop_be/node_modules/prisma/query-engine-darwin-arm64',
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

  _i1.ModelDelegate<Bakery> get bakery => _i1.ModelDelegate<Bakery>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Cake> get cake => _i1.ModelDelegate<Cake>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
