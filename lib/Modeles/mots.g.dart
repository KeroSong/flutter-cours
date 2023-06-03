// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mots.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMotsCollection on Isar {
  IsarCollection<Mots> get mots => this.collection();
}

const MotsSchema = CollectionSchema(
  name: r'Mots',
  id: 5253024088183313,
  properties: {
    r'categorie': PropertySchema(
      id: 0,
      name: r'categorie',
      type: IsarType.long,
    ),
    r'modifiable': PropertySchema(
      id: 1,
      name: r'modifiable',
      type: IsarType.bool,
    ),
    r'mot': PropertySchema(
      id: 2,
      name: r'mot',
      type: IsarType.string,
    )
  },
  estimateSize: _motsEstimateSize,
  serialize: _motsSerialize,
  deserialize: _motsDeserialize,
  deserializeProp: _motsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _motsGetId,
  getLinks: _motsGetLinks,
  attach: _motsAttach,
  version: '3.1.0+1',
);

int _motsEstimateSize(
  Mots object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.mot;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _motsSerialize(
  Mots object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.categorie);
  writer.writeBool(offsets[1], object.modifiable);
  writer.writeString(offsets[2], object.mot);
}

Mots _motsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Mots();
  object.categorie = reader.readLongOrNull(offsets[0]);
  object.id = id;
  object.modifiable = reader.readBoolOrNull(offsets[1]);
  object.mot = reader.readStringOrNull(offsets[2]);
  return object;
}

P _motsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _motsGetId(Mots object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _motsGetLinks(Mots object) {
  return [];
}

void _motsAttach(IsarCollection<dynamic> col, Id id, Mots object) {
  object.id = id;
}

extension MotsQueryWhereSort on QueryBuilder<Mots, Mots, QWhere> {
  QueryBuilder<Mots, Mots, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MotsQueryWhere on QueryBuilder<Mots, Mots, QWhereClause> {
  QueryBuilder<Mots, Mots, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Mots, Mots, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Mots, Mots, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Mots, Mots, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MotsQueryFilter on QueryBuilder<Mots, Mots, QFilterCondition> {
  QueryBuilder<Mots, Mots, QAfterFilterCondition> categorieIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categorie',
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> categorieIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categorie',
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> categorieEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categorie',
        value: value,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> categorieGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categorie',
        value: value,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> categorieLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categorie',
        value: value,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> categorieBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categorie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> modifiableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'modifiable',
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> modifiableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'modifiable',
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> modifiableEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modifiable',
        value: value,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mot',
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mot',
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mot',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mot',
        value: '',
      ));
    });
  }

  QueryBuilder<Mots, Mots, QAfterFilterCondition> motIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mot',
        value: '',
      ));
    });
  }
}

extension MotsQueryObject on QueryBuilder<Mots, Mots, QFilterCondition> {}

extension MotsQueryLinks on QueryBuilder<Mots, Mots, QFilterCondition> {}

extension MotsQuerySortBy on QueryBuilder<Mots, Mots, QSortBy> {
  QueryBuilder<Mots, Mots, QAfterSortBy> sortByCategorie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categorie', Sort.asc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> sortByCategorieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categorie', Sort.desc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> sortByModifiable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiable', Sort.asc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> sortByModifiableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiable', Sort.desc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> sortByMot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mot', Sort.asc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> sortByMotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mot', Sort.desc);
    });
  }
}

extension MotsQuerySortThenBy on QueryBuilder<Mots, Mots, QSortThenBy> {
  QueryBuilder<Mots, Mots, QAfterSortBy> thenByCategorie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categorie', Sort.asc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> thenByCategorieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categorie', Sort.desc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> thenByModifiable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiable', Sort.asc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> thenByModifiableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiable', Sort.desc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> thenByMot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mot', Sort.asc);
    });
  }

  QueryBuilder<Mots, Mots, QAfterSortBy> thenByMotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mot', Sort.desc);
    });
  }
}

extension MotsQueryWhereDistinct on QueryBuilder<Mots, Mots, QDistinct> {
  QueryBuilder<Mots, Mots, QDistinct> distinctByCategorie() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categorie');
    });
  }

  QueryBuilder<Mots, Mots, QDistinct> distinctByModifiable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modifiable');
    });
  }

  QueryBuilder<Mots, Mots, QDistinct> distinctByMot(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mot', caseSensitive: caseSensitive);
    });
  }
}

extension MotsQueryProperty on QueryBuilder<Mots, Mots, QQueryProperty> {
  QueryBuilder<Mots, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Mots, int?, QQueryOperations> categorieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categorie');
    });
  }

  QueryBuilder<Mots, bool?, QQueryOperations> modifiableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modifiable');
    });
  }

  QueryBuilder<Mots, String?, QQueryOperations> motProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mot');
    });
  }
}
