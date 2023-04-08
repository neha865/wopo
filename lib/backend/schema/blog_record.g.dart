// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlogRecord> _$blogRecordSerializer = new _$BlogRecordSerializer();

class _$BlogRecordSerializer implements StructuredSerializer<BlogRecord> {
  @override
  final Iterable<Type> types = const [BlogRecord, _$BlogRecord];
  @override
  final String wireName = 'BlogRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BlogRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.city;
    if (value != null) {
      result
        ..add('City')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.event;
    if (value != null) {
      result
        ..add('Event')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hotspot;
    if (value != null) {
      result
        ..add('Hotspot')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('ID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BlogRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlogRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'City':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Event':
          result.event = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Hotspot':
          result.hotspot = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ID':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BlogRecord extends BlogRecord {
  @override
  final String? city;
  @override
  final String? title;
  @override
  final String? event;
  @override
  final String? date;
  @override
  final bool? hotspot;
  @override
  final String? id;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BlogRecord([void Function(BlogRecordBuilder)? updates]) =>
      (new BlogRecordBuilder()..update(updates))._build();

  _$BlogRecord._(
      {this.city,
      this.title,
      this.event,
      this.date,
      this.hotspot,
      this.id,
      this.ffRef})
      : super._();

  @override
  BlogRecord rebuild(void Function(BlogRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogRecordBuilder toBuilder() => new BlogRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogRecord &&
        city == other.city &&
        title == other.title &&
        event == other.event &&
        date == other.date &&
        hotspot == other.hotspot &&
        id == other.id &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, hotspot.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlogRecord')
          ..add('city', city)
          ..add('title', title)
          ..add('event', event)
          ..add('date', date)
          ..add('hotspot', hotspot)
          ..add('id', id)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BlogRecordBuilder implements Builder<BlogRecord, BlogRecordBuilder> {
  _$BlogRecord? _$v;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  bool? _hotspot;
  bool? get hotspot => _$this._hotspot;
  set hotspot(bool? hotspot) => _$this._hotspot = hotspot;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BlogRecordBuilder() {
    BlogRecord._initializeBuilder(this);
  }

  BlogRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city;
      _title = $v.title;
      _event = $v.event;
      _date = $v.date;
      _hotspot = $v.hotspot;
      _id = $v.id;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlogRecord;
  }

  @override
  void update(void Function(BlogRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlogRecord build() => _build();

  _$BlogRecord _build() {
    final _$result = _$v ??
        new _$BlogRecord._(
            city: city,
            title: title,
            event: event,
            date: date,
            hotspot: hotspot,
            id: id,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
