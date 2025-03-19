// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BakeryWhereInput _$BakeryWhereInputFromJson(Map<String, dynamic> json) =>
    BakeryWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => BakeryWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => BakeryWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => BakeryWhereInput.fromJson(e as Map<String, dynamic>)),
      bakeryId: json['BAKERY_ID'] == null
          ? null
          : IntFilter.fromJson(json['BAKERY_ID'] as Map<String, dynamic>),
      bakeryName: json['BAKERY_NAME'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['BAKERY_NAME'] as Map<String, dynamic>),
      address: json['ADDRESS'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['ADDRESS'] as Map<String, dynamic>),
      description: json['DESCRIPTION'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['DESCRIPTION'] as Map<String, dynamic>),
      open: json['OPEN'] == null
          ? null
          : IntNullableFilter.fromJson(json['OPEN'] as Map<String, dynamic>),
      close: json['CLOSE'] == null
          ? null
          : IntNullableFilter.fromJson(json['CLOSE'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : StringNullableFilter.fromJson(json['URL'] as Map<String, dynamic>),
      cake: json['cake'] == null
          ? null
          : CakeListRelationFilter.fromJson(
              json['cake'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryWhereInputToJson(BakeryWhereInput instance) =>
    <String, dynamic>{
      if (instance.AND?.map((e) => e.toJson()).toList() case final value?)
        'AND': value,
      if (instance.OR?.map((e) => e.toJson()).toList() case final value?)
        'OR': value,
      if (instance.NOT?.map((e) => e.toJson()).toList() case final value?)
        'NOT': value,
      if (instance.bakeryId?.toJson() case final value?) 'BAKERY_ID': value,
      if (instance.bakeryName?.toJson() case final value?) 'BAKERY_NAME': value,
      if (instance.address?.toJson() case final value?) 'ADDRESS': value,
      if (instance.description?.toJson() case final value?)
        'DESCRIPTION': value,
      if (instance.open?.toJson() case final value?) 'OPEN': value,
      if (instance.close?.toJson() case final value?) 'CLOSE': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
      if (instance.cake?.toJson() case final value?) 'cake': value,
    };

BakeryOrderByWithRelationInput _$BakeryOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    BakeryOrderByWithRelationInput(
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      bakeryName: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_NAME']),
      address: $enumDecodeNullable(_$SortOrderEnumMap, json['ADDRESS']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['DESCRIPTION']),
      open: $enumDecodeNullable(_$SortOrderEnumMap, json['OPEN']),
      close: $enumDecodeNullable(_$SortOrderEnumMap, json['CLOSE']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['URL']),
      cake: json['cake'] == null
          ? null
          : CakeOrderByRelationAggregateInput.fromJson(
              json['cake'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryOrderByWithRelationInputToJson(
        BakeryOrderByWithRelationInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryName] case final value?)
        'BAKERY_NAME': value,
      if (_$SortOrderEnumMap[instance.address] case final value?)
        'ADDRESS': value,
      if (_$SortOrderEnumMap[instance.description] case final value?)
        'DESCRIPTION': value,
      if (_$SortOrderEnumMap[instance.open] case final value?) 'OPEN': value,
      if (_$SortOrderEnumMap[instance.close] case final value?) 'CLOSE': value,
      if (_$SortOrderEnumMap[instance.url] case final value?) 'URL': value,
      if (instance.cake?.toJson() case final value?) 'cake': value,
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

BakeryWhereUniqueInput _$BakeryWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    BakeryWhereUniqueInput(
      bakeryId: (json['BAKERY_ID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BakeryWhereUniqueInputToJson(
        BakeryWhereUniqueInput instance) =>
    <String, dynamic>{
      if (instance.bakeryId case final value?) 'BAKERY_ID': value,
    };

BakeryOrderByWithAggregationInput _$BakeryOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    BakeryOrderByWithAggregationInput(
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      bakeryName: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_NAME']),
      address: $enumDecodeNullable(_$SortOrderEnumMap, json['ADDRESS']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['DESCRIPTION']),
      open: $enumDecodeNullable(_$SortOrderEnumMap, json['OPEN']),
      close: $enumDecodeNullable(_$SortOrderEnumMap, json['CLOSE']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['URL']),
      $count: json['_count'] == null
          ? null
          : BakeryCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : BakeryAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : BakeryMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : BakeryMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : BakerySumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryOrderByWithAggregationInputToJson(
        BakeryOrderByWithAggregationInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryName] case final value?)
        'BAKERY_NAME': value,
      if (_$SortOrderEnumMap[instance.address] case final value?)
        'ADDRESS': value,
      if (_$SortOrderEnumMap[instance.description] case final value?)
        'DESCRIPTION': value,
      if (_$SortOrderEnumMap[instance.open] case final value?) 'OPEN': value,
      if (_$SortOrderEnumMap[instance.close] case final value?) 'CLOSE': value,
      if (_$SortOrderEnumMap[instance.url] case final value?) 'URL': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$avg?.toJson() case final value?) '_avg': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$sum?.toJson() case final value?) '_sum': value,
    };

BakeryScalarWhereWithAggregatesInput
    _$BakeryScalarWhereWithAggregatesInputFromJson(Map<String, dynamic> json) =>
        BakeryScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              BakeryScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              BakeryScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              BakeryScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          bakeryId: json['BAKERY_ID'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['BAKERY_ID'] as Map<String, dynamic>),
          bakeryName: json['BAKERY_NAME'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['BAKERY_NAME'] as Map<String, dynamic>),
          address: json['ADDRESS'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['ADDRESS'] as Map<String, dynamic>),
          description: json['DESCRIPTION'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['DESCRIPTION'] as Map<String, dynamic>),
          open: json['OPEN'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['OPEN'] as Map<String, dynamic>),
          close: json['CLOSE'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['CLOSE'] as Map<String, dynamic>),
          url: json['URL'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['URL'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BakeryScalarWhereWithAggregatesInputToJson(
        BakeryScalarWhereWithAggregatesInput instance) =>
    <String, dynamic>{
      if (instance.AND?.map((e) => e.toJson()).toList() case final value?)
        'AND': value,
      if (instance.OR?.map((e) => e.toJson()).toList() case final value?)
        'OR': value,
      if (instance.NOT?.map((e) => e.toJson()).toList() case final value?)
        'NOT': value,
      if (instance.bakeryId?.toJson() case final value?) 'BAKERY_ID': value,
      if (instance.bakeryName?.toJson() case final value?) 'BAKERY_NAME': value,
      if (instance.address?.toJson() case final value?) 'ADDRESS': value,
      if (instance.description?.toJson() case final value?)
        'DESCRIPTION': value,
      if (instance.open?.toJson() case final value?) 'OPEN': value,
      if (instance.close?.toJson() case final value?) 'CLOSE': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

CakeWhereInput _$CakeWhereInputFromJson(Map<String, dynamic> json) =>
    CakeWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => CakeWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => CakeWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => CakeWhereInput.fromJson(e as Map<String, dynamic>)),
      cakeId: json['CAKE_ID'] == null
          ? null
          : IntFilter.fromJson(json['CAKE_ID'] as Map<String, dynamic>),
      bakeryId: json['BAKERY_ID'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['BAKERY_ID'] as Map<String, dynamic>),
      cakeName: json['CAKE_NAME'] == null
          ? null
          : StringFilter.fromJson(json['CAKE_NAME'] as Map<String, dynamic>),
      cakeCategory: json['CAKE_CATEGORY'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['CAKE_CATEGORY'] as Map<String, dynamic>),
      ingredients: json['INGREDIENTS'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['INGREDIENTS'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : StringNullableFilter.fromJson(json['URL'] as Map<String, dynamic>),
      bakery: json['bakery'] == null
          ? null
          : BakeryRelationFilter.fromJson(
              json['bakery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeWhereInputToJson(CakeWhereInput instance) =>
    <String, dynamic>{
      if (instance.AND?.map((e) => e.toJson()).toList() case final value?)
        'AND': value,
      if (instance.OR?.map((e) => e.toJson()).toList() case final value?)
        'OR': value,
      if (instance.NOT?.map((e) => e.toJson()).toList() case final value?)
        'NOT': value,
      if (instance.cakeId?.toJson() case final value?) 'CAKE_ID': value,
      if (instance.bakeryId?.toJson() case final value?) 'BAKERY_ID': value,
      if (instance.cakeName?.toJson() case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory?.toJson() case final value?)
        'CAKE_CATEGORY': value,
      if (instance.ingredients?.toJson() case final value?)
        'INGREDIENTS': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
      if (instance.bakery?.toJson() case final value?) 'bakery': value,
    };

CakeOrderByWithRelationInput _$CakeOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    CakeOrderByWithRelationInput(
      cakeId: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_ID']),
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      cakeName: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_NAME']),
      cakeCategory:
          $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_CATEGORY']),
      ingredients: $enumDecodeNullable(_$SortOrderEnumMap, json['INGREDIENTS']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['URL']),
      bakery: json['bakery'] == null
          ? null
          : BakeryOrderByWithRelationInput.fromJson(
              json['bakery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeOrderByWithRelationInputToJson(
        CakeOrderByWithRelationInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.cakeId] case final value?)
        'CAKE_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.cakeName] case final value?)
        'CAKE_NAME': value,
      if (_$SortOrderEnumMap[instance.cakeCategory] case final value?)
        'CAKE_CATEGORY': value,
      if (_$SortOrderEnumMap[instance.ingredients] case final value?)
        'INGREDIENTS': value,
      if (_$SortOrderEnumMap[instance.url] case final value?) 'URL': value,
      if (instance.bakery?.toJson() case final value?) 'bakery': value,
    };

CakeWhereUniqueInput _$CakeWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    CakeWhereUniqueInput(
      cakeId: (json['CAKE_ID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CakeWhereUniqueInputToJson(
        CakeWhereUniqueInput instance) =>
    <String, dynamic>{
      if (instance.cakeId case final value?) 'CAKE_ID': value,
    };

CakeOrderByWithAggregationInput _$CakeOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    CakeOrderByWithAggregationInput(
      cakeId: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_ID']),
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      cakeName: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_NAME']),
      cakeCategory:
          $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_CATEGORY']),
      ingredients: $enumDecodeNullable(_$SortOrderEnumMap, json['INGREDIENTS']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['URL']),
      $count: json['_count'] == null
          ? null
          : CakeCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : CakeAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : CakeMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : CakeMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : CakeSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeOrderByWithAggregationInputToJson(
        CakeOrderByWithAggregationInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.cakeId] case final value?)
        'CAKE_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.cakeName] case final value?)
        'CAKE_NAME': value,
      if (_$SortOrderEnumMap[instance.cakeCategory] case final value?)
        'CAKE_CATEGORY': value,
      if (_$SortOrderEnumMap[instance.ingredients] case final value?)
        'INGREDIENTS': value,
      if (_$SortOrderEnumMap[instance.url] case final value?) 'URL': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$avg?.toJson() case final value?) '_avg': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$sum?.toJson() case final value?) '_sum': value,
    };

CakeScalarWhereWithAggregatesInput _$CakeScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    CakeScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          CakeScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          CakeScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          CakeScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      cakeId: json['CAKE_ID'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['CAKE_ID'] as Map<String, dynamic>),
      bakeryId: json['BAKERY_ID'] == null
          ? null
          : IntNullableWithAggregatesFilter.fromJson(
              json['BAKERY_ID'] as Map<String, dynamic>),
      cakeName: json['CAKE_NAME'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['CAKE_NAME'] as Map<String, dynamic>),
      cakeCategory: json['CAKE_CATEGORY'] == null
          ? null
          : StringNullableWithAggregatesFilter.fromJson(
              json['CAKE_CATEGORY'] as Map<String, dynamic>),
      ingredients: json['INGREDIENTS'] == null
          ? null
          : StringNullableWithAggregatesFilter.fromJson(
              json['INGREDIENTS'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : StringNullableWithAggregatesFilter.fromJson(
              json['URL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeScalarWhereWithAggregatesInputToJson(
        CakeScalarWhereWithAggregatesInput instance) =>
    <String, dynamic>{
      if (instance.AND?.map((e) => e.toJson()).toList() case final value?)
        'AND': value,
      if (instance.OR?.map((e) => e.toJson()).toList() case final value?)
        'OR': value,
      if (instance.NOT?.map((e) => e.toJson()).toList() case final value?)
        'NOT': value,
      if (instance.cakeId?.toJson() case final value?) 'CAKE_ID': value,
      if (instance.bakeryId?.toJson() case final value?) 'BAKERY_ID': value,
      if (instance.cakeName?.toJson() case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory?.toJson() case final value?)
        'CAKE_CATEGORY': value,
      if (instance.ingredients?.toJson() case final value?)
        'INGREDIENTS': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

BakeryCreateInput _$BakeryCreateInputFromJson(Map<String, dynamic> json) =>
    BakeryCreateInput(
      bakeryName: json['BAKERY_NAME'] as String?,
      address: json['ADDRESS'] as String?,
      description: json['DESCRIPTION'] as String?,
      open: (json['OPEN'] as num?)?.toInt(),
      close: (json['CLOSE'] as num?)?.toInt(),
      url: json['URL'] as String?,
      cake: json['cake'] == null
          ? null
          : CakeCreateNestedManyWithoutBakeryInput.fromJson(
              json['cake'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryCreateInputToJson(BakeryCreateInput instance) =>
    <String, dynamic>{
      if (instance.bakeryName case final value?) 'BAKERY_NAME': value,
      if (instance.address case final value?) 'ADDRESS': value,
      if (instance.description case final value?) 'DESCRIPTION': value,
      if (instance.open case final value?) 'OPEN': value,
      if (instance.close case final value?) 'CLOSE': value,
      if (instance.url case final value?) 'URL': value,
      if (instance.cake?.toJson() case final value?) 'cake': value,
    };

BakeryUncheckedCreateInput _$BakeryUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    BakeryUncheckedCreateInput(
      bakeryId: (json['BAKERY_ID'] as num?)?.toInt(),
      bakeryName: json['BAKERY_NAME'] as String?,
      address: json['ADDRESS'] as String?,
      description: json['DESCRIPTION'] as String?,
      open: (json['OPEN'] as num?)?.toInt(),
      close: (json['CLOSE'] as num?)?.toInt(),
      url: json['URL'] as String?,
      cake: json['cake'] == null
          ? null
          : CakeUncheckedCreateNestedManyWithoutBakeryInput.fromJson(
              json['cake'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryUncheckedCreateInputToJson(
        BakeryUncheckedCreateInput instance) =>
    <String, dynamic>{
      if (instance.bakeryId case final value?) 'BAKERY_ID': value,
      if (instance.bakeryName case final value?) 'BAKERY_NAME': value,
      if (instance.address case final value?) 'ADDRESS': value,
      if (instance.description case final value?) 'DESCRIPTION': value,
      if (instance.open case final value?) 'OPEN': value,
      if (instance.close case final value?) 'CLOSE': value,
      if (instance.url case final value?) 'URL': value,
      if (instance.cake?.toJson() case final value?) 'cake': value,
    };

BakeryUpdateInput _$BakeryUpdateInputFromJson(Map<String, dynamic> json) =>
    BakeryUpdateInput(
      bakeryName: json['BAKERY_NAME'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['BAKERY_NAME'] as Map<String, dynamic>),
      address: json['ADDRESS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['ADDRESS'] as Map<String, dynamic>),
      description: json['DESCRIPTION'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DESCRIPTION'] as Map<String, dynamic>),
      open: json['OPEN'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['OPEN'] as Map<String, dynamic>),
      close: json['CLOSE'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['CLOSE'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['URL'] as Map<String, dynamic>),
      cake: json['cake'] == null
          ? null
          : CakeUpdateManyWithoutBakeryNestedInput.fromJson(
              json['cake'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryUpdateInputToJson(BakeryUpdateInput instance) =>
    <String, dynamic>{
      if (instance.bakeryName?.toJson() case final value?) 'BAKERY_NAME': value,
      if (instance.address?.toJson() case final value?) 'ADDRESS': value,
      if (instance.description?.toJson() case final value?)
        'DESCRIPTION': value,
      if (instance.open?.toJson() case final value?) 'OPEN': value,
      if (instance.close?.toJson() case final value?) 'CLOSE': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
      if (instance.cake?.toJson() case final value?) 'cake': value,
    };

BakeryUncheckedUpdateInput _$BakeryUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    BakeryUncheckedUpdateInput(
      bakeryId: json['BAKERY_ID'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['BAKERY_ID'] as Map<String, dynamic>),
      bakeryName: json['BAKERY_NAME'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['BAKERY_NAME'] as Map<String, dynamic>),
      address: json['ADDRESS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['ADDRESS'] as Map<String, dynamic>),
      description: json['DESCRIPTION'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DESCRIPTION'] as Map<String, dynamic>),
      open: json['OPEN'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['OPEN'] as Map<String, dynamic>),
      close: json['CLOSE'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['CLOSE'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['URL'] as Map<String, dynamic>),
      cake: json['cake'] == null
          ? null
          : CakeUncheckedUpdateManyWithoutBakeryNestedInput.fromJson(
              json['cake'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryUncheckedUpdateInputToJson(
        BakeryUncheckedUpdateInput instance) =>
    <String, dynamic>{
      if (instance.bakeryId?.toJson() case final value?) 'BAKERY_ID': value,
      if (instance.bakeryName?.toJson() case final value?) 'BAKERY_NAME': value,
      if (instance.address?.toJson() case final value?) 'ADDRESS': value,
      if (instance.description?.toJson() case final value?)
        'DESCRIPTION': value,
      if (instance.open?.toJson() case final value?) 'OPEN': value,
      if (instance.close?.toJson() case final value?) 'CLOSE': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
      if (instance.cake?.toJson() case final value?) 'cake': value,
    };

BakeryCreateManyInput _$BakeryCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    BakeryCreateManyInput(
      bakeryId: (json['BAKERY_ID'] as num?)?.toInt(),
      bakeryName: json['BAKERY_NAME'] as String?,
      address: json['ADDRESS'] as String?,
      description: json['DESCRIPTION'] as String?,
      open: (json['OPEN'] as num?)?.toInt(),
      close: (json['CLOSE'] as num?)?.toInt(),
      url: json['URL'] as String?,
    );

Map<String, dynamic> _$BakeryCreateManyInputToJson(
        BakeryCreateManyInput instance) =>
    <String, dynamic>{
      if (instance.bakeryId case final value?) 'BAKERY_ID': value,
      if (instance.bakeryName case final value?) 'BAKERY_NAME': value,
      if (instance.address case final value?) 'ADDRESS': value,
      if (instance.description case final value?) 'DESCRIPTION': value,
      if (instance.open case final value?) 'OPEN': value,
      if (instance.close case final value?) 'CLOSE': value,
      if (instance.url case final value?) 'URL': value,
    };

BakeryUpdateManyMutationInput _$BakeryUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    BakeryUpdateManyMutationInput(
      bakeryName: json['BAKERY_NAME'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['BAKERY_NAME'] as Map<String, dynamic>),
      address: json['ADDRESS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['ADDRESS'] as Map<String, dynamic>),
      description: json['DESCRIPTION'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DESCRIPTION'] as Map<String, dynamic>),
      open: json['OPEN'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['OPEN'] as Map<String, dynamic>),
      close: json['CLOSE'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['CLOSE'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['URL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryUpdateManyMutationInputToJson(
        BakeryUpdateManyMutationInput instance) =>
    <String, dynamic>{
      if (instance.bakeryName?.toJson() case final value?) 'BAKERY_NAME': value,
      if (instance.address?.toJson() case final value?) 'ADDRESS': value,
      if (instance.description?.toJson() case final value?)
        'DESCRIPTION': value,
      if (instance.open?.toJson() case final value?) 'OPEN': value,
      if (instance.close?.toJson() case final value?) 'CLOSE': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

BakeryUncheckedUpdateManyInput _$BakeryUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    BakeryUncheckedUpdateManyInput(
      bakeryId: json['BAKERY_ID'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['BAKERY_ID'] as Map<String, dynamic>),
      bakeryName: json['BAKERY_NAME'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['BAKERY_NAME'] as Map<String, dynamic>),
      address: json['ADDRESS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['ADDRESS'] as Map<String, dynamic>),
      description: json['DESCRIPTION'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DESCRIPTION'] as Map<String, dynamic>),
      open: json['OPEN'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['OPEN'] as Map<String, dynamic>),
      close: json['CLOSE'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['CLOSE'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['URL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryUncheckedUpdateManyInputToJson(
        BakeryUncheckedUpdateManyInput instance) =>
    <String, dynamic>{
      if (instance.bakeryId?.toJson() case final value?) 'BAKERY_ID': value,
      if (instance.bakeryName?.toJson() case final value?) 'BAKERY_NAME': value,
      if (instance.address?.toJson() case final value?) 'ADDRESS': value,
      if (instance.description?.toJson() case final value?)
        'DESCRIPTION': value,
      if (instance.open?.toJson() case final value?) 'OPEN': value,
      if (instance.close?.toJson() case final value?) 'CLOSE': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

CakeCreateInput _$CakeCreateInputFromJson(Map<String, dynamic> json) =>
    CakeCreateInput(
      cakeName: json['CAKE_NAME'] as String,
      cakeCategory: json['CAKE_CATEGORY'] as String?,
      ingredients: json['INGREDIENTS'] as String?,
      url: json['URL'] as String?,
      bakery: json['bakery'] == null
          ? null
          : BakeryCreateNestedOneWithoutCakeInput.fromJson(
              json['bakery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeCreateInputToJson(CakeCreateInput instance) =>
    <String, dynamic>{
      'CAKE_NAME': instance.cakeName,
      if (instance.cakeCategory case final value?) 'CAKE_CATEGORY': value,
      if (instance.ingredients case final value?) 'INGREDIENTS': value,
      if (instance.url case final value?) 'URL': value,
      if (instance.bakery?.toJson() case final value?) 'bakery': value,
    };

CakeUncheckedCreateInput _$CakeUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    CakeUncheckedCreateInput(
      cakeId: (json['CAKE_ID'] as num?)?.toInt(),
      bakeryId: (json['BAKERY_ID'] as num?)?.toInt(),
      cakeName: json['CAKE_NAME'] as String,
      cakeCategory: json['CAKE_CATEGORY'] as String?,
      ingredients: json['INGREDIENTS'] as String?,
      url: json['URL'] as String?,
    );

Map<String, dynamic> _$CakeUncheckedCreateInputToJson(
        CakeUncheckedCreateInput instance) =>
    <String, dynamic>{
      if (instance.cakeId case final value?) 'CAKE_ID': value,
      if (instance.bakeryId case final value?) 'BAKERY_ID': value,
      'CAKE_NAME': instance.cakeName,
      if (instance.cakeCategory case final value?) 'CAKE_CATEGORY': value,
      if (instance.ingredients case final value?) 'INGREDIENTS': value,
      if (instance.url case final value?) 'URL': value,
    };

CakeUpdateInput _$CakeUpdateInputFromJson(Map<String, dynamic> json) =>
    CakeUpdateInput(
      cakeName: json['CAKE_NAME'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['CAKE_NAME'] as Map<String, dynamic>),
      cakeCategory: json['CAKE_CATEGORY'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['CAKE_CATEGORY'] as Map<String, dynamic>),
      ingredients: json['INGREDIENTS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['INGREDIENTS'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['URL'] as Map<String, dynamic>),
      bakery: json['bakery'] == null
          ? null
          : BakeryUpdateOneWithoutCakeNestedInput.fromJson(
              json['bakery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeUpdateInputToJson(CakeUpdateInput instance) =>
    <String, dynamic>{
      if (instance.cakeName?.toJson() case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory?.toJson() case final value?)
        'CAKE_CATEGORY': value,
      if (instance.ingredients?.toJson() case final value?)
        'INGREDIENTS': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
      if (instance.bakery?.toJson() case final value?) 'bakery': value,
    };

CakeUncheckedUpdateInput _$CakeUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CakeUncheckedUpdateInput(
      cakeId: json['CAKE_ID'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['CAKE_ID'] as Map<String, dynamic>),
      bakeryId: json['BAKERY_ID'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['BAKERY_ID'] as Map<String, dynamic>),
      cakeName: json['CAKE_NAME'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['CAKE_NAME'] as Map<String, dynamic>),
      cakeCategory: json['CAKE_CATEGORY'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['CAKE_CATEGORY'] as Map<String, dynamic>),
      ingredients: json['INGREDIENTS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['INGREDIENTS'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['URL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeUncheckedUpdateInputToJson(
        CakeUncheckedUpdateInput instance) =>
    <String, dynamic>{
      if (instance.cakeId?.toJson() case final value?) 'CAKE_ID': value,
      if (instance.bakeryId?.toJson() case final value?) 'BAKERY_ID': value,
      if (instance.cakeName?.toJson() case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory?.toJson() case final value?)
        'CAKE_CATEGORY': value,
      if (instance.ingredients?.toJson() case final value?)
        'INGREDIENTS': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

CakeCreateManyInput _$CakeCreateManyInputFromJson(Map<String, dynamic> json) =>
    CakeCreateManyInput(
      cakeId: (json['CAKE_ID'] as num?)?.toInt(),
      bakeryId: (json['BAKERY_ID'] as num?)?.toInt(),
      cakeName: json['CAKE_NAME'] as String,
      cakeCategory: json['CAKE_CATEGORY'] as String?,
      ingredients: json['INGREDIENTS'] as String?,
      url: json['URL'] as String?,
    );

Map<String, dynamic> _$CakeCreateManyInputToJson(
        CakeCreateManyInput instance) =>
    <String, dynamic>{
      if (instance.cakeId case final value?) 'CAKE_ID': value,
      if (instance.bakeryId case final value?) 'BAKERY_ID': value,
      'CAKE_NAME': instance.cakeName,
      if (instance.cakeCategory case final value?) 'CAKE_CATEGORY': value,
      if (instance.ingredients case final value?) 'INGREDIENTS': value,
      if (instance.url case final value?) 'URL': value,
    };

CakeUpdateManyMutationInput _$CakeUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    CakeUpdateManyMutationInput(
      cakeName: json['CAKE_NAME'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['CAKE_NAME'] as Map<String, dynamic>),
      cakeCategory: json['CAKE_CATEGORY'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['CAKE_CATEGORY'] as Map<String, dynamic>),
      ingredients: json['INGREDIENTS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['INGREDIENTS'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['URL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeUpdateManyMutationInputToJson(
        CakeUpdateManyMutationInput instance) =>
    <String, dynamic>{
      if (instance.cakeName?.toJson() case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory?.toJson() case final value?)
        'CAKE_CATEGORY': value,
      if (instance.ingredients?.toJson() case final value?)
        'INGREDIENTS': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

CakeUncheckedUpdateManyInput _$CakeUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    CakeUncheckedUpdateManyInput(
      cakeId: json['CAKE_ID'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['CAKE_ID'] as Map<String, dynamic>),
      bakeryId: json['BAKERY_ID'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['BAKERY_ID'] as Map<String, dynamic>),
      cakeName: json['CAKE_NAME'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['CAKE_NAME'] as Map<String, dynamic>),
      cakeCategory: json['CAKE_CATEGORY'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['CAKE_CATEGORY'] as Map<String, dynamic>),
      ingredients: json['INGREDIENTS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['INGREDIENTS'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['URL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeUncheckedUpdateManyInputToJson(
        CakeUncheckedUpdateManyInput instance) =>
    <String, dynamic>{
      if (instance.cakeId?.toJson() case final value?) 'CAKE_ID': value,
      if (instance.bakeryId?.toJson() case final value?) 'BAKERY_ID': value,
      if (instance.cakeName?.toJson() case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory?.toJson() case final value?)
        'CAKE_CATEGORY': value,
      if (instance.ingredients?.toJson() case final value?)
        'INGREDIENTS': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) => <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

StringNullableFilter _$StringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableFilterToJson(
        StringNullableFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

IntNullableFilter _$IntNullableFilterFromJson(Map<String, dynamic> json) =>
    IntNullableFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntNullableFilterToJson(IntNullableFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

CakeListRelationFilter _$CakeListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    CakeListRelationFilter(
      every: json['every'] == null
          ? null
          : CakeWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : CakeWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : CakeWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeListRelationFilterToJson(
        CakeListRelationFilter instance) =>
    <String, dynamic>{
      if (instance.every?.toJson() case final value?) 'every': value,
      if (instance.some?.toJson() case final value?) 'some': value,
      if (instance.none?.toJson() case final value?) 'none': value,
    };

SortOrderInput _$SortOrderInputFromJson(Map<String, dynamic> json) =>
    SortOrderInput(
      sort: $enumDecode(_$SortOrderEnumMap, json['sort']),
      nulls: $enumDecodeNullable(_$NullsOrderEnumMap, json['nulls']),
    );

Map<String, dynamic> _$SortOrderInputToJson(SortOrderInput instance) =>
    <String, dynamic>{
      'sort': _$SortOrderEnumMap[instance.sort]!,
      if (_$NullsOrderEnumMap[instance.nulls] case final value?) 'nulls': value,
    };

const _$NullsOrderEnumMap = {
  NullsOrder.first: 'first',
  NullsOrder.last: 'last',
};

CakeOrderByRelationAggregateInput _$CakeOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CakeOrderByRelationAggregateInput(
      $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
    );

Map<String, dynamic> _$CakeOrderByRelationAggregateInputToJson(
        CakeOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.$count] case final value?)
        '_count': value,
    };

BakeryCountOrderByAggregateInput _$BakeryCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BakeryCountOrderByAggregateInput(
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      bakeryName: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_NAME']),
      address: $enumDecodeNullable(_$SortOrderEnumMap, json['ADDRESS']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['DESCRIPTION']),
      open: $enumDecodeNullable(_$SortOrderEnumMap, json['OPEN']),
      close: $enumDecodeNullable(_$SortOrderEnumMap, json['CLOSE']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['URL']),
    );

Map<String, dynamic> _$BakeryCountOrderByAggregateInputToJson(
        BakeryCountOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryName] case final value?)
        'BAKERY_NAME': value,
      if (_$SortOrderEnumMap[instance.address] case final value?)
        'ADDRESS': value,
      if (_$SortOrderEnumMap[instance.description] case final value?)
        'DESCRIPTION': value,
      if (_$SortOrderEnumMap[instance.open] case final value?) 'OPEN': value,
      if (_$SortOrderEnumMap[instance.close] case final value?) 'CLOSE': value,
      if (_$SortOrderEnumMap[instance.url] case final value?) 'URL': value,
    };

BakeryAvgOrderByAggregateInput _$BakeryAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BakeryAvgOrderByAggregateInput(
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      open: $enumDecodeNullable(_$SortOrderEnumMap, json['OPEN']),
      close: $enumDecodeNullable(_$SortOrderEnumMap, json['CLOSE']),
    );

Map<String, dynamic> _$BakeryAvgOrderByAggregateInputToJson(
        BakeryAvgOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.open] case final value?) 'OPEN': value,
      if (_$SortOrderEnumMap[instance.close] case final value?) 'CLOSE': value,
    };

BakeryMaxOrderByAggregateInput _$BakeryMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BakeryMaxOrderByAggregateInput(
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      bakeryName: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_NAME']),
      address: $enumDecodeNullable(_$SortOrderEnumMap, json['ADDRESS']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['DESCRIPTION']),
      open: $enumDecodeNullable(_$SortOrderEnumMap, json['OPEN']),
      close: $enumDecodeNullable(_$SortOrderEnumMap, json['CLOSE']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['URL']),
    );

Map<String, dynamic> _$BakeryMaxOrderByAggregateInputToJson(
        BakeryMaxOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryName] case final value?)
        'BAKERY_NAME': value,
      if (_$SortOrderEnumMap[instance.address] case final value?)
        'ADDRESS': value,
      if (_$SortOrderEnumMap[instance.description] case final value?)
        'DESCRIPTION': value,
      if (_$SortOrderEnumMap[instance.open] case final value?) 'OPEN': value,
      if (_$SortOrderEnumMap[instance.close] case final value?) 'CLOSE': value,
      if (_$SortOrderEnumMap[instance.url] case final value?) 'URL': value,
    };

BakeryMinOrderByAggregateInput _$BakeryMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BakeryMinOrderByAggregateInput(
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      bakeryName: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_NAME']),
      address: $enumDecodeNullable(_$SortOrderEnumMap, json['ADDRESS']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['DESCRIPTION']),
      open: $enumDecodeNullable(_$SortOrderEnumMap, json['OPEN']),
      close: $enumDecodeNullable(_$SortOrderEnumMap, json['CLOSE']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['URL']),
    );

Map<String, dynamic> _$BakeryMinOrderByAggregateInputToJson(
        BakeryMinOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryName] case final value?)
        'BAKERY_NAME': value,
      if (_$SortOrderEnumMap[instance.address] case final value?)
        'ADDRESS': value,
      if (_$SortOrderEnumMap[instance.description] case final value?)
        'DESCRIPTION': value,
      if (_$SortOrderEnumMap[instance.open] case final value?) 'OPEN': value,
      if (_$SortOrderEnumMap[instance.close] case final value?) 'CLOSE': value,
      if (_$SortOrderEnumMap[instance.url] case final value?) 'URL': value,
    };

BakerySumOrderByAggregateInput _$BakerySumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BakerySumOrderByAggregateInput(
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      open: $enumDecodeNullable(_$SortOrderEnumMap, json['OPEN']),
      close: $enumDecodeNullable(_$SortOrderEnumMap, json['CLOSE']),
    );

Map<String, dynamic> _$BakerySumOrderByAggregateInputToJson(
        BakerySumOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.open] case final value?) 'OPEN': value,
      if (_$SortOrderEnumMap[instance.close] case final value?) 'CLOSE': value,
    };

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
        IntWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$avg?.toJson() case final value?) '_avg': value,
      if (instance.$sum?.toJson() case final value?) '_sum': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

StringNullableWithAggregatesFilter _$StringNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableWithAggregatesFilterToJson(
        StringNullableWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

IntNullableWithAggregatesFilter _$IntNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntNullableWithAggregatesFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntNullableWithAggregatesFilterToJson(
        IntNullableWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$avg?.toJson() case final value?) '_avg': value,
      if (instance.$sum?.toJson() case final value?) '_sum': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

BakeryRelationFilter _$BakeryRelationFilterFromJson(
        Map<String, dynamic> json) =>
    BakeryRelationFilter(
      $is: json['is'] == null
          ? null
          : BakeryWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : BakeryWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryRelationFilterToJson(
        BakeryRelationFilter instance) =>
    <String, dynamic>{
      if (instance.$is?.toJson() case final value?) 'is': value,
      if (instance.isNot?.toJson() case final value?) 'isNot': value,
    };

CakeCountOrderByAggregateInput _$CakeCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CakeCountOrderByAggregateInput(
      cakeId: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_ID']),
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      cakeName: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_NAME']),
      cakeCategory:
          $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_CATEGORY']),
      ingredients: $enumDecodeNullable(_$SortOrderEnumMap, json['INGREDIENTS']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['URL']),
    );

Map<String, dynamic> _$CakeCountOrderByAggregateInputToJson(
        CakeCountOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.cakeId] case final value?)
        'CAKE_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.cakeName] case final value?)
        'CAKE_NAME': value,
      if (_$SortOrderEnumMap[instance.cakeCategory] case final value?)
        'CAKE_CATEGORY': value,
      if (_$SortOrderEnumMap[instance.ingredients] case final value?)
        'INGREDIENTS': value,
      if (_$SortOrderEnumMap[instance.url] case final value?) 'URL': value,
    };

CakeAvgOrderByAggregateInput _$CakeAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CakeAvgOrderByAggregateInput(
      cakeId: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_ID']),
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
    );

Map<String, dynamic> _$CakeAvgOrderByAggregateInputToJson(
        CakeAvgOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.cakeId] case final value?)
        'CAKE_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
    };

CakeMaxOrderByAggregateInput _$CakeMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CakeMaxOrderByAggregateInput(
      cakeId: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_ID']),
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      cakeName: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_NAME']),
      cakeCategory:
          $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_CATEGORY']),
      ingredients: $enumDecodeNullable(_$SortOrderEnumMap, json['INGREDIENTS']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['URL']),
    );

Map<String, dynamic> _$CakeMaxOrderByAggregateInputToJson(
        CakeMaxOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.cakeId] case final value?)
        'CAKE_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.cakeName] case final value?)
        'CAKE_NAME': value,
      if (_$SortOrderEnumMap[instance.cakeCategory] case final value?)
        'CAKE_CATEGORY': value,
      if (_$SortOrderEnumMap[instance.ingredients] case final value?)
        'INGREDIENTS': value,
      if (_$SortOrderEnumMap[instance.url] case final value?) 'URL': value,
    };

CakeMinOrderByAggregateInput _$CakeMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CakeMinOrderByAggregateInput(
      cakeId: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_ID']),
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
      cakeName: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_NAME']),
      cakeCategory:
          $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_CATEGORY']),
      ingredients: $enumDecodeNullable(_$SortOrderEnumMap, json['INGREDIENTS']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['URL']),
    );

Map<String, dynamic> _$CakeMinOrderByAggregateInputToJson(
        CakeMinOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.cakeId] case final value?)
        'CAKE_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
      if (_$SortOrderEnumMap[instance.cakeName] case final value?)
        'CAKE_NAME': value,
      if (_$SortOrderEnumMap[instance.cakeCategory] case final value?)
        'CAKE_CATEGORY': value,
      if (_$SortOrderEnumMap[instance.ingredients] case final value?)
        'INGREDIENTS': value,
      if (_$SortOrderEnumMap[instance.url] case final value?) 'URL': value,
    };

CakeSumOrderByAggregateInput _$CakeSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CakeSumOrderByAggregateInput(
      cakeId: $enumDecodeNullable(_$SortOrderEnumMap, json['CAKE_ID']),
      bakeryId: $enumDecodeNullable(_$SortOrderEnumMap, json['BAKERY_ID']),
    );

Map<String, dynamic> _$CakeSumOrderByAggregateInputToJson(
        CakeSumOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.cakeId] case final value?)
        'CAKE_ID': value,
      if (_$SortOrderEnumMap[instance.bakeryId] case final value?)
        'BAKERY_ID': value,
    };

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
        StringWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

CakeCreateNestedManyWithoutBakeryInput
    _$CakeCreateNestedManyWithoutBakeryInputFromJson(
            Map<String, dynamic> json) =>
        CakeCreateNestedManyWithoutBakeryInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CakeCreateWithoutBakeryInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CakeCreateOrConnectWithoutBakeryInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CakeCreateManyBakeryInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CakeWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CakeCreateNestedManyWithoutBakeryInputToJson(
        CakeCreateNestedManyWithoutBakeryInput instance) =>
    <String, dynamic>{
      if (instance.create?.map((e) => e.toJson()).toList() case final value?)
        'create': value,
      if (instance.connectOrCreate?.map((e) => e.toJson()).toList()
          case final value?)
        'connectOrCreate': value,
      if (instance.createMany?.toJson() case final value?) 'createMany': value,
      if (instance.connect?.map((e) => e.toJson()).toList() case final value?)
        'connect': value,
    };

CakeUncheckedCreateNestedManyWithoutBakeryInput
    _$CakeUncheckedCreateNestedManyWithoutBakeryInputFromJson(
            Map<String, dynamic> json) =>
        CakeUncheckedCreateNestedManyWithoutBakeryInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CakeCreateWithoutBakeryInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CakeCreateOrConnectWithoutBakeryInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CakeCreateManyBakeryInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CakeWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CakeUncheckedCreateNestedManyWithoutBakeryInputToJson(
        CakeUncheckedCreateNestedManyWithoutBakeryInput instance) =>
    <String, dynamic>{
      if (instance.create?.map((e) => e.toJson()).toList() case final value?)
        'create': value,
      if (instance.connectOrCreate?.map((e) => e.toJson()).toList()
          case final value?)
        'connectOrCreate': value,
      if (instance.createMany?.toJson() case final value?) 'createMany': value,
      if (instance.connect?.map((e) => e.toJson()).toList() case final value?)
        'connect': value,
    };

NullableStringFieldUpdateOperationsInput
    _$NullableStringFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableStringFieldUpdateOperationsInput(
          set: json['set'] as String?,
        );

Map<String, dynamic> _$NullableStringFieldUpdateOperationsInputToJson(
        NullableStringFieldUpdateOperationsInput instance) =>
    <String, dynamic>{
      if (instance.set case final value?) 'set': value,
    };

NullableIntFieldUpdateOperationsInput
    _$NullableIntFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableIntFieldUpdateOperationsInput(
          set: (json['set'] as num?)?.toInt(),
          increment: (json['increment'] as num?)?.toInt(),
          decrement: (json['decrement'] as num?)?.toInt(),
          multiply: (json['multiply'] as num?)?.toInt(),
          divide: (json['divide'] as num?)?.toInt(),
        );

Map<String, dynamic> _$NullableIntFieldUpdateOperationsInputToJson(
        NullableIntFieldUpdateOperationsInput instance) =>
    <String, dynamic>{
      if (instance.set case final value?) 'set': value,
      if (instance.increment case final value?) 'increment': value,
      if (instance.decrement case final value?) 'decrement': value,
      if (instance.multiply case final value?) 'multiply': value,
      if (instance.divide case final value?) 'divide': value,
    };

CakeUpdateManyWithoutBakeryNestedInput
    _$CakeUpdateManyWithoutBakeryNestedInputFromJson(
            Map<String, dynamic> json) =>
        CakeUpdateManyWithoutBakeryNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CakeCreateWithoutBakeryInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CakeCreateOrConnectWithoutBakeryInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              CakeUpsertWithWhereUniqueWithoutBakeryInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CakeCreateManyBakeryInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => CakeWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => CakeWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => CakeWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CakeWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              CakeUpdateWithWhereUniqueWithoutBakeryInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              CakeUpdateManyWithWhereWithoutBakeryInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => CakeScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CakeUpdateManyWithoutBakeryNestedInputToJson(
        CakeUpdateManyWithoutBakeryNestedInput instance) =>
    <String, dynamic>{
      if (instance.create?.map((e) => e.toJson()).toList() case final value?)
        'create': value,
      if (instance.connectOrCreate?.map((e) => e.toJson()).toList()
          case final value?)
        'connectOrCreate': value,
      if (instance.upsert?.map((e) => e.toJson()).toList() case final value?)
        'upsert': value,
      if (instance.createMany?.toJson() case final value?) 'createMany': value,
      if (instance.set?.map((e) => e.toJson()).toList() case final value?)
        'set': value,
      if (instance.disconnect?.map((e) => e.toJson()).toList()
          case final value?)
        'disconnect': value,
      if (instance.delete?.map((e) => e.toJson()).toList() case final value?)
        'delete': value,
      if (instance.connect?.map((e) => e.toJson()).toList() case final value?)
        'connect': value,
      if (instance.update?.map((e) => e.toJson()).toList() case final value?)
        'update': value,
      if (instance.updateMany?.map((e) => e.toJson()).toList()
          case final value?)
        'updateMany': value,
      if (instance.deleteMany?.map((e) => e.toJson()).toList()
          case final value?)
        'deleteMany': value,
    };

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: (json['set'] as num?)?.toInt(),
      increment: (json['increment'] as num?)?.toInt(),
      decrement: (json['decrement'] as num?)?.toInt(),
      multiply: (json['multiply'] as num?)?.toInt(),
      divide: (json['divide'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
        IntFieldUpdateOperationsInput instance) =>
    <String, dynamic>{
      if (instance.set case final value?) 'set': value,
      if (instance.increment case final value?) 'increment': value,
      if (instance.decrement case final value?) 'decrement': value,
      if (instance.multiply case final value?) 'multiply': value,
      if (instance.divide case final value?) 'divide': value,
    };

CakeUncheckedUpdateManyWithoutBakeryNestedInput
    _$CakeUncheckedUpdateManyWithoutBakeryNestedInputFromJson(
            Map<String, dynamic> json) =>
        CakeUncheckedUpdateManyWithoutBakeryNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CakeCreateWithoutBakeryInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CakeCreateOrConnectWithoutBakeryInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              CakeUpsertWithWhereUniqueWithoutBakeryInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CakeCreateManyBakeryInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => CakeWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => CakeWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => CakeWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CakeWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              CakeUpdateWithWhereUniqueWithoutBakeryInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              CakeUpdateManyWithWhereWithoutBakeryInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => CakeScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CakeUncheckedUpdateManyWithoutBakeryNestedInputToJson(
        CakeUncheckedUpdateManyWithoutBakeryNestedInput instance) =>
    <String, dynamic>{
      if (instance.create?.map((e) => e.toJson()).toList() case final value?)
        'create': value,
      if (instance.connectOrCreate?.map((e) => e.toJson()).toList()
          case final value?)
        'connectOrCreate': value,
      if (instance.upsert?.map((e) => e.toJson()).toList() case final value?)
        'upsert': value,
      if (instance.createMany?.toJson() case final value?) 'createMany': value,
      if (instance.set?.map((e) => e.toJson()).toList() case final value?)
        'set': value,
      if (instance.disconnect?.map((e) => e.toJson()).toList()
          case final value?)
        'disconnect': value,
      if (instance.delete?.map((e) => e.toJson()).toList() case final value?)
        'delete': value,
      if (instance.connect?.map((e) => e.toJson()).toList() case final value?)
        'connect': value,
      if (instance.update?.map((e) => e.toJson()).toList() case final value?)
        'update': value,
      if (instance.updateMany?.map((e) => e.toJson()).toList()
          case final value?)
        'updateMany': value,
      if (instance.deleteMany?.map((e) => e.toJson()).toList()
          case final value?)
        'deleteMany': value,
    };

BakeryCreateNestedOneWithoutCakeInput
    _$BakeryCreateNestedOneWithoutCakeInputFromJson(
            Map<String, dynamic> json) =>
        BakeryCreateNestedOneWithoutCakeInput(
          create: json['create'] == null
              ? null
              : BakeryCreateWithoutCakeInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : BakeryCreateOrConnectWithoutCakeInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : BakeryWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BakeryCreateNestedOneWithoutCakeInputToJson(
        BakeryCreateNestedOneWithoutCakeInput instance) =>
    <String, dynamic>{
      if (instance.create?.toJson() case final value?) 'create': value,
      if (instance.connectOrCreate?.toJson() case final value?)
        'connectOrCreate': value,
      if (instance.connect?.toJson() case final value?) 'connect': value,
    };

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
        StringFieldUpdateOperationsInput instance) =>
    <String, dynamic>{
      if (instance.set case final value?) 'set': value,
    };

BakeryUpdateOneWithoutCakeNestedInput
    _$BakeryUpdateOneWithoutCakeNestedInputFromJson(
            Map<String, dynamic> json) =>
        BakeryUpdateOneWithoutCakeNestedInput(
          create: json['create'] == null
              ? null
              : BakeryCreateWithoutCakeInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : BakeryCreateOrConnectWithoutCakeInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : BakeryUpsertWithoutCakeInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          disconnect: json['disconnect'] as bool?,
          delete: json['delete'] as bool?,
          connect: json['connect'] == null
              ? null
              : BakeryWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : BakeryUpdateWithoutCakeInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BakeryUpdateOneWithoutCakeNestedInputToJson(
        BakeryUpdateOneWithoutCakeNestedInput instance) =>
    <String, dynamic>{
      if (instance.create?.toJson() case final value?) 'create': value,
      if (instance.connectOrCreate?.toJson() case final value?)
        'connectOrCreate': value,
      if (instance.upsert?.toJson() case final value?) 'upsert': value,
      if (instance.disconnect case final value?) 'disconnect': value,
      if (instance.delete case final value?) 'delete': value,
      if (instance.connect?.toJson() case final value?) 'connect': value,
      if (instance.update?.toJson() case final value?) 'update': value,
    };

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

NestedStringNullableFilter _$NestedStringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringNullableFilterToJson(
        NestedStringNullableFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

NestedIntNullableFilter _$NestedIntNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntNullableFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntNullableFilterToJson(
        NestedIntNullableFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
        NestedIntWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$avg?.toJson() case final value?) '_avg': value,
      if (instance.$sum?.toJson() case final value?) '_sum': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

NestedStringNullableWithAggregatesFilter
    _$NestedStringNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedStringNullableWithAggregatesFilter(
          equals: json['equals'] as String?,
          $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
          notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
          lt: json['lt'] as String?,
          lte: json['lte'] as String?,
          gt: json['gt'] as String?,
          gte: json['gte'] as String?,
          contains: json['contains'] as String?,
          startsWith: json['startsWith'] as String?,
          endsWith: json['endsWith'] as String?,
          not: json['not'] == null
              ? null
              : NestedStringNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedStringNullableWithAggregatesFilterToJson(
        NestedStringNullableWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

NestedIntNullableWithAggregatesFilter
    _$NestedIntNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedIntNullableWithAggregatesFilter(
          equals: (json['equals'] as num?)?.toInt(),
          $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
          notIn:
              (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
          lt: (json['lt'] as num?)?.toInt(),
          lte: (json['lte'] as num?)?.toInt(),
          gt: (json['gt'] as num?)?.toInt(),
          gte: (json['gte'] as num?)?.toInt(),
          not: json['not'] == null
              ? null
              : NestedIntNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : NestedFloatNullableFilter.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_sum'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedIntNullableWithAggregatesFilterToJson(
        NestedIntNullableWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$avg?.toJson() case final value?) '_avg': value,
      if (instance.$sum?.toJson() case final value?) '_sum': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

NestedFloatNullableFilter _$NestedFloatNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedFloatNullableFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatNullableFilterToJson(
        NestedFloatNullableFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
        NestedStringWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

CakeCreateWithoutBakeryInput _$CakeCreateWithoutBakeryInputFromJson(
        Map<String, dynamic> json) =>
    CakeCreateWithoutBakeryInput(
      cakeName: json['CAKE_NAME'] as String,
      cakeCategory: json['CAKE_CATEGORY'] as String?,
      ingredients: json['INGREDIENTS'] as String?,
      url: json['URL'] as String?,
    );

Map<String, dynamic> _$CakeCreateWithoutBakeryInputToJson(
        CakeCreateWithoutBakeryInput instance) =>
    <String, dynamic>{
      'CAKE_NAME': instance.cakeName,
      if (instance.cakeCategory case final value?) 'CAKE_CATEGORY': value,
      if (instance.ingredients case final value?) 'INGREDIENTS': value,
      if (instance.url case final value?) 'URL': value,
    };

CakeUncheckedCreateWithoutBakeryInput
    _$CakeUncheckedCreateWithoutBakeryInputFromJson(
            Map<String, dynamic> json) =>
        CakeUncheckedCreateWithoutBakeryInput(
          cakeId: (json['CAKE_ID'] as num?)?.toInt(),
          cakeName: json['CAKE_NAME'] as String,
          cakeCategory: json['CAKE_CATEGORY'] as String?,
          ingredients: json['INGREDIENTS'] as String?,
          url: json['URL'] as String?,
        );

Map<String, dynamic> _$CakeUncheckedCreateWithoutBakeryInputToJson(
        CakeUncheckedCreateWithoutBakeryInput instance) =>
    <String, dynamic>{
      if (instance.cakeId case final value?) 'CAKE_ID': value,
      'CAKE_NAME': instance.cakeName,
      if (instance.cakeCategory case final value?) 'CAKE_CATEGORY': value,
      if (instance.ingredients case final value?) 'INGREDIENTS': value,
      if (instance.url case final value?) 'URL': value,
    };

CakeCreateOrConnectWithoutBakeryInput
    _$CakeCreateOrConnectWithoutBakeryInputFromJson(
            Map<String, dynamic> json) =>
        CakeCreateOrConnectWithoutBakeryInput(
          where: CakeWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: CakeCreateWithoutBakeryInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CakeCreateOrConnectWithoutBakeryInputToJson(
        CakeCreateOrConnectWithoutBakeryInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

CakeCreateManyBakeryInputEnvelope _$CakeCreateManyBakeryInputEnvelopeFromJson(
        Map<String, dynamic> json) =>
    CakeCreateManyBakeryInputEnvelope(
      data: (json['data'] as List<dynamic>).map(
          (e) => CakeCreateManyBakeryInput.fromJson(e as Map<String, dynamic>)),
      skipDuplicates: json['skipDuplicates'] as bool?,
    );

Map<String, dynamic> _$CakeCreateManyBakeryInputEnvelopeToJson(
        CakeCreateManyBakeryInputEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      if (instance.skipDuplicates case final value?) 'skipDuplicates': value,
    };

CakeUpsertWithWhereUniqueWithoutBakeryInput
    _$CakeUpsertWithWhereUniqueWithoutBakeryInputFromJson(
            Map<String, dynamic> json) =>
        CakeUpsertWithWhereUniqueWithoutBakeryInput(
          where: CakeWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: CakeUpdateWithoutBakeryInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: CakeCreateWithoutBakeryInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CakeUpsertWithWhereUniqueWithoutBakeryInputToJson(
        CakeUpsertWithWhereUniqueWithoutBakeryInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

CakeUpdateWithWhereUniqueWithoutBakeryInput
    _$CakeUpdateWithWhereUniqueWithoutBakeryInputFromJson(
            Map<String, dynamic> json) =>
        CakeUpdateWithWhereUniqueWithoutBakeryInput(
          where: CakeWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: CakeUpdateWithoutBakeryInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CakeUpdateWithWhereUniqueWithoutBakeryInputToJson(
        CakeUpdateWithWhereUniqueWithoutBakeryInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

CakeUpdateManyWithWhereWithoutBakeryInput
    _$CakeUpdateManyWithWhereWithoutBakeryInputFromJson(
            Map<String, dynamic> json) =>
        CakeUpdateManyWithWhereWithoutBakeryInput(
          where: CakeScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: CakeUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CakeUpdateManyWithWhereWithoutBakeryInputToJson(
        CakeUpdateManyWithWhereWithoutBakeryInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

CakeScalarWhereInput _$CakeScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    CakeScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => CakeScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => CakeScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => CakeScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      cakeId: json['CAKE_ID'] == null
          ? null
          : IntFilter.fromJson(json['CAKE_ID'] as Map<String, dynamic>),
      bakeryId: json['BAKERY_ID'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['BAKERY_ID'] as Map<String, dynamic>),
      cakeName: json['CAKE_NAME'] == null
          ? null
          : StringFilter.fromJson(json['CAKE_NAME'] as Map<String, dynamic>),
      cakeCategory: json['CAKE_CATEGORY'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['CAKE_CATEGORY'] as Map<String, dynamic>),
      ingredients: json['INGREDIENTS'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['INGREDIENTS'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : StringNullableFilter.fromJson(json['URL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeScalarWhereInputToJson(
        CakeScalarWhereInput instance) =>
    <String, dynamic>{
      if (instance.AND?.map((e) => e.toJson()).toList() case final value?)
        'AND': value,
      if (instance.OR?.map((e) => e.toJson()).toList() case final value?)
        'OR': value,
      if (instance.NOT?.map((e) => e.toJson()).toList() case final value?)
        'NOT': value,
      if (instance.cakeId?.toJson() case final value?) 'CAKE_ID': value,
      if (instance.bakeryId?.toJson() case final value?) 'BAKERY_ID': value,
      if (instance.cakeName?.toJson() case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory?.toJson() case final value?)
        'CAKE_CATEGORY': value,
      if (instance.ingredients?.toJson() case final value?)
        'INGREDIENTS': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

BakeryCreateWithoutCakeInput _$BakeryCreateWithoutCakeInputFromJson(
        Map<String, dynamic> json) =>
    BakeryCreateWithoutCakeInput(
      bakeryName: json['BAKERY_NAME'] as String?,
      address: json['ADDRESS'] as String?,
      description: json['DESCRIPTION'] as String?,
      open: (json['OPEN'] as num?)?.toInt(),
      close: (json['CLOSE'] as num?)?.toInt(),
      url: json['URL'] as String?,
    );

Map<String, dynamic> _$BakeryCreateWithoutCakeInputToJson(
        BakeryCreateWithoutCakeInput instance) =>
    <String, dynamic>{
      if (instance.bakeryName case final value?) 'BAKERY_NAME': value,
      if (instance.address case final value?) 'ADDRESS': value,
      if (instance.description case final value?) 'DESCRIPTION': value,
      if (instance.open case final value?) 'OPEN': value,
      if (instance.close case final value?) 'CLOSE': value,
      if (instance.url case final value?) 'URL': value,
    };

BakeryUncheckedCreateWithoutCakeInput
    _$BakeryUncheckedCreateWithoutCakeInputFromJson(
            Map<String, dynamic> json) =>
        BakeryUncheckedCreateWithoutCakeInput(
          bakeryId: (json['BAKERY_ID'] as num?)?.toInt(),
          bakeryName: json['BAKERY_NAME'] as String?,
          address: json['ADDRESS'] as String?,
          description: json['DESCRIPTION'] as String?,
          open: (json['OPEN'] as num?)?.toInt(),
          close: (json['CLOSE'] as num?)?.toInt(),
          url: json['URL'] as String?,
        );

Map<String, dynamic> _$BakeryUncheckedCreateWithoutCakeInputToJson(
        BakeryUncheckedCreateWithoutCakeInput instance) =>
    <String, dynamic>{
      if (instance.bakeryId case final value?) 'BAKERY_ID': value,
      if (instance.bakeryName case final value?) 'BAKERY_NAME': value,
      if (instance.address case final value?) 'ADDRESS': value,
      if (instance.description case final value?) 'DESCRIPTION': value,
      if (instance.open case final value?) 'OPEN': value,
      if (instance.close case final value?) 'CLOSE': value,
      if (instance.url case final value?) 'URL': value,
    };

BakeryCreateOrConnectWithoutCakeInput
    _$BakeryCreateOrConnectWithoutCakeInputFromJson(
            Map<String, dynamic> json) =>
        BakeryCreateOrConnectWithoutCakeInput(
          where: BakeryWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: BakeryCreateWithoutCakeInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BakeryCreateOrConnectWithoutCakeInputToJson(
        BakeryCreateOrConnectWithoutCakeInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

BakeryUpsertWithoutCakeInput _$BakeryUpsertWithoutCakeInputFromJson(
        Map<String, dynamic> json) =>
    BakeryUpsertWithoutCakeInput(
      update: BakeryUpdateWithoutCakeInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: BakeryCreateWithoutCakeInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryUpsertWithoutCakeInputToJson(
        BakeryUpsertWithoutCakeInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

BakeryUpdateWithoutCakeInput _$BakeryUpdateWithoutCakeInputFromJson(
        Map<String, dynamic> json) =>
    BakeryUpdateWithoutCakeInput(
      bakeryName: json['BAKERY_NAME'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['BAKERY_NAME'] as Map<String, dynamic>),
      address: json['ADDRESS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['ADDRESS'] as Map<String, dynamic>),
      description: json['DESCRIPTION'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DESCRIPTION'] as Map<String, dynamic>),
      open: json['OPEN'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['OPEN'] as Map<String, dynamic>),
      close: json['CLOSE'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['CLOSE'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['URL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BakeryUpdateWithoutCakeInputToJson(
        BakeryUpdateWithoutCakeInput instance) =>
    <String, dynamic>{
      if (instance.bakeryName?.toJson() case final value?) 'BAKERY_NAME': value,
      if (instance.address?.toJson() case final value?) 'ADDRESS': value,
      if (instance.description?.toJson() case final value?)
        'DESCRIPTION': value,
      if (instance.open?.toJson() case final value?) 'OPEN': value,
      if (instance.close?.toJson() case final value?) 'CLOSE': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

BakeryUncheckedUpdateWithoutCakeInput
    _$BakeryUncheckedUpdateWithoutCakeInputFromJson(
            Map<String, dynamic> json) =>
        BakeryUncheckedUpdateWithoutCakeInput(
          bakeryId: json['BAKERY_ID'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['BAKERY_ID'] as Map<String, dynamic>),
          bakeryName: json['BAKERY_NAME'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['BAKERY_NAME'] as Map<String, dynamic>),
          address: json['ADDRESS'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['ADDRESS'] as Map<String, dynamic>),
          description: json['DESCRIPTION'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['DESCRIPTION'] as Map<String, dynamic>),
          open: json['OPEN'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['OPEN'] as Map<String, dynamic>),
          close: json['CLOSE'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['CLOSE'] as Map<String, dynamic>),
          url: json['URL'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['URL'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BakeryUncheckedUpdateWithoutCakeInputToJson(
        BakeryUncheckedUpdateWithoutCakeInput instance) =>
    <String, dynamic>{
      if (instance.bakeryId?.toJson() case final value?) 'BAKERY_ID': value,
      if (instance.bakeryName?.toJson() case final value?) 'BAKERY_NAME': value,
      if (instance.address?.toJson() case final value?) 'ADDRESS': value,
      if (instance.description?.toJson() case final value?)
        'DESCRIPTION': value,
      if (instance.open?.toJson() case final value?) 'OPEN': value,
      if (instance.close?.toJson() case final value?) 'CLOSE': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

CakeCreateManyBakeryInput _$CakeCreateManyBakeryInputFromJson(
        Map<String, dynamic> json) =>
    CakeCreateManyBakeryInput(
      cakeId: (json['CAKE_ID'] as num?)?.toInt(),
      cakeName: json['CAKE_NAME'] as String,
      cakeCategory: json['CAKE_CATEGORY'] as String?,
      ingredients: json['INGREDIENTS'] as String?,
      url: json['URL'] as String?,
    );

Map<String, dynamic> _$CakeCreateManyBakeryInputToJson(
        CakeCreateManyBakeryInput instance) =>
    <String, dynamic>{
      if (instance.cakeId case final value?) 'CAKE_ID': value,
      'CAKE_NAME': instance.cakeName,
      if (instance.cakeCategory case final value?) 'CAKE_CATEGORY': value,
      if (instance.ingredients case final value?) 'INGREDIENTS': value,
      if (instance.url case final value?) 'URL': value,
    };

CakeUpdateWithoutBakeryInput _$CakeUpdateWithoutBakeryInputFromJson(
        Map<String, dynamic> json) =>
    CakeUpdateWithoutBakeryInput(
      cakeName: json['CAKE_NAME'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['CAKE_NAME'] as Map<String, dynamic>),
      cakeCategory: json['CAKE_CATEGORY'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['CAKE_CATEGORY'] as Map<String, dynamic>),
      ingredients: json['INGREDIENTS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['INGREDIENTS'] as Map<String, dynamic>),
      url: json['URL'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['URL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CakeUpdateWithoutBakeryInputToJson(
        CakeUpdateWithoutBakeryInput instance) =>
    <String, dynamic>{
      if (instance.cakeName?.toJson() case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory?.toJson() case final value?)
        'CAKE_CATEGORY': value,
      if (instance.ingredients?.toJson() case final value?)
        'INGREDIENTS': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

CakeUncheckedUpdateWithoutBakeryInput
    _$CakeUncheckedUpdateWithoutBakeryInputFromJson(
            Map<String, dynamic> json) =>
        CakeUncheckedUpdateWithoutBakeryInput(
          cakeId: json['CAKE_ID'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['CAKE_ID'] as Map<String, dynamic>),
          cakeName: json['CAKE_NAME'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['CAKE_NAME'] as Map<String, dynamic>),
          cakeCategory: json['CAKE_CATEGORY'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['CAKE_CATEGORY'] as Map<String, dynamic>),
          ingredients: json['INGREDIENTS'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['INGREDIENTS'] as Map<String, dynamic>),
          url: json['URL'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['URL'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CakeUncheckedUpdateWithoutBakeryInputToJson(
        CakeUncheckedUpdateWithoutBakeryInput instance) =>
    <String, dynamic>{
      if (instance.cakeId?.toJson() case final value?) 'CAKE_ID': value,
      if (instance.cakeName?.toJson() case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory?.toJson() case final value?)
        'CAKE_CATEGORY': value,
      if (instance.ingredients?.toJson() case final value?)
        'INGREDIENTS': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

CakeUncheckedUpdateManyWithoutCakeInput
    _$CakeUncheckedUpdateManyWithoutCakeInputFromJson(
            Map<String, dynamic> json) =>
        CakeUncheckedUpdateManyWithoutCakeInput(
          cakeId: json['CAKE_ID'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['CAKE_ID'] as Map<String, dynamic>),
          cakeName: json['CAKE_NAME'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['CAKE_NAME'] as Map<String, dynamic>),
          cakeCategory: json['CAKE_CATEGORY'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['CAKE_CATEGORY'] as Map<String, dynamic>),
          ingredients: json['INGREDIENTS'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['INGREDIENTS'] as Map<String, dynamic>),
          url: json['URL'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['URL'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CakeUncheckedUpdateManyWithoutCakeInputToJson(
        CakeUncheckedUpdateManyWithoutCakeInput instance) =>
    <String, dynamic>{
      if (instance.cakeId?.toJson() case final value?) 'CAKE_ID': value,
      if (instance.cakeName?.toJson() case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory?.toJson() case final value?)
        'CAKE_CATEGORY': value,
      if (instance.ingredients?.toJson() case final value?)
        'INGREDIENTS': value,
      if (instance.url?.toJson() case final value?) 'URL': value,
    };

Bakery _$BakeryFromJson(Map<String, dynamic> json) => Bakery(
      bakeryId: (json['BAKERY_ID'] as num).toInt(),
      bakeryName: json['BAKERY_NAME'] as String?,
      address: json['ADDRESS'] as String?,
      description: json['DESCRIPTION'] as String?,
      open: (json['OPEN'] as num?)?.toInt(),
      close: (json['CLOSE'] as num?)?.toInt(),
      url: json['URL'] as String?,
    );

Map<String, dynamic> _$BakeryToJson(Bakery instance) => <String, dynamic>{
      'BAKERY_ID': instance.bakeryId,
      if (instance.bakeryName case final value?) 'BAKERY_NAME': value,
      if (instance.address case final value?) 'ADDRESS': value,
      if (instance.description case final value?) 'DESCRIPTION': value,
      if (instance.open case final value?) 'OPEN': value,
      if (instance.close case final value?) 'CLOSE': value,
      if (instance.url case final value?) 'URL': value,
    };

Cake _$CakeFromJson(Map<String, dynamic> json) => Cake(
      cakeId: (json['CAKE_ID'] as num).toInt(),
      bakeryId: (json['BAKERY_ID'] as num?)?.toInt(),
      cakeName: json['CAKE_NAME'] as String,
      cakeCategory: json['CAKE_CATEGORY'] as String?,
      ingredients: json['INGREDIENTS'] as String?,
      url: json['URL'] as String?,
    );

Map<String, dynamic> _$CakeToJson(Cake instance) => <String, dynamic>{
      'CAKE_ID': instance.cakeId,
      if (instance.bakeryId case final value?) 'BAKERY_ID': value,
      'CAKE_NAME': instance.cakeName,
      if (instance.cakeCategory case final value?) 'CAKE_CATEGORY': value,
      if (instance.ingredients case final value?) 'INGREDIENTS': value,
      if (instance.url case final value?) 'URL': value,
    };

BakeryGroupByOutputType _$BakeryGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BakeryGroupByOutputType(
      bakeryId: (json['BAKERY_ID'] as num?)?.toInt(),
      bakeryName: json['BAKERY_NAME'] as String?,
      address: json['ADDRESS'] as String?,
      description: json['DESCRIPTION'] as String?,
      open: (json['OPEN'] as num?)?.toInt(),
      close: (json['CLOSE'] as num?)?.toInt(),
      url: json['URL'] as String?,
    );

Map<String, dynamic> _$BakeryGroupByOutputTypeToJson(
        BakeryGroupByOutputType instance) =>
    <String, dynamic>{
      if (instance.bakeryId case final value?) 'BAKERY_ID': value,
      if (instance.bakeryName case final value?) 'BAKERY_NAME': value,
      if (instance.address case final value?) 'ADDRESS': value,
      if (instance.description case final value?) 'DESCRIPTION': value,
      if (instance.open case final value?) 'OPEN': value,
      if (instance.close case final value?) 'CLOSE': value,
      if (instance.url case final value?) 'URL': value,
    };

CakeGroupByOutputType _$CakeGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CakeGroupByOutputType(
      cakeId: (json['CAKE_ID'] as num?)?.toInt(),
      bakeryId: (json['BAKERY_ID'] as num?)?.toInt(),
      cakeName: json['CAKE_NAME'] as String?,
      cakeCategory: json['CAKE_CATEGORY'] as String?,
      ingredients: json['INGREDIENTS'] as String?,
      url: json['URL'] as String?,
    );

Map<String, dynamic> _$CakeGroupByOutputTypeToJson(
        CakeGroupByOutputType instance) =>
    <String, dynamic>{
      if (instance.cakeId case final value?) 'CAKE_ID': value,
      if (instance.bakeryId case final value?) 'BAKERY_ID': value,
      if (instance.cakeName case final value?) 'CAKE_NAME': value,
      if (instance.cakeCategory case final value?) 'CAKE_CATEGORY': value,
      if (instance.ingredients case final value?) 'INGREDIENTS': value,
      if (instance.url case final value?) 'URL': value,
    };

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) =>
    <String, dynamic>{
      if (instance.count case final value?) 'count': value,
    };

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) =>
    <String, dynamic>{
      if (instance.db case final value?) 'db': value,
    };
