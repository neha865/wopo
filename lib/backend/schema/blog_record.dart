import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'blog_record.g.dart';

abstract class BlogRecord implements Built<BlogRecord, BlogRecordBuilder> {
  static Serializer<BlogRecord> get serializer => _$blogRecordSerializer;

  @BuiltValueField(wireName: 'City')
  String? get city;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Event')
  String? get event;

  @BuiltValueField(wireName: 'Date')
  String? get date;

  @BuiltValueField(wireName: 'Hotspot')
  bool? get hotspot;

  @BuiltValueField(wireName: 'ID')
  String? get id;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BlogRecordBuilder builder) => builder
    ..city = ''
    ..title = ''
    ..event = ''
    ..date = ''
    ..hotspot = false
    ..id = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Blog');

  static Stream<BlogRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BlogRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BlogRecord._();
  factory BlogRecord([void Function(BlogRecordBuilder) updates]) = _$BlogRecord;

  static BlogRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBlogRecordData({
  String? city,
  String? title,
  String? event,
  String? date,
  bool? hotspot,
  String? id,
}) {
  final firestoreData = serializers.toFirestore(
    BlogRecord.serializer,
    BlogRecord(
      (b) => b
        ..city = city
        ..title = title
        ..event = event
        ..date = date
        ..hotspot = hotspot
        ..id = id,
    ),
  );

  return firestoreData;
}
