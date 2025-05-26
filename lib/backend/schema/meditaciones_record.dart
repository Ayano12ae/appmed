import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeditacionesRecord extends FirestoreRecord {
  MeditacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "longDescription" field.
  String? _longDescription;
  String get longDescription => _longDescription ?? '';
  bool hasLongDescription() => _longDescription != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "audioUrl" field.
  String? _audioUrl;
  String get audioUrl => _audioUrl ?? '';
  bool hasAudioUrl() => _audioUrl != null;

  // "duration" field.
  DateTime? _duration;
  DateTime? get duration => _duration;
  bool hasDuration() => _duration != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _longDescription = snapshotData['longDescription'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _audioUrl = snapshotData['audioUrl'] as String?;
    _duration = snapshotData['duration'] as DateTime?;
    _category = snapshotData['category'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Meditaciones');

  static Stream<MeditacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeditacionesRecord.fromSnapshot(s));

  static Future<MeditacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeditacionesRecord.fromSnapshot(s));

  static MeditacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeditacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeditacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeditacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeditacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeditacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeditacionesRecordData({
  String? title,
  String? shortDescription,
  String? longDescription,
  String? imageUrl,
  String? audioUrl,
  DateTime? duration,
  String? category,
  DateTime? createdAt,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'shortDescription': shortDescription,
      'longDescription': longDescription,
      'imageUrl': imageUrl,
      'audioUrl': audioUrl,
      'duration': duration,
      'category': category,
      'createdAt': createdAt,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeditacionesRecordDocumentEquality
    implements Equality<MeditacionesRecord> {
  const MeditacionesRecordDocumentEquality();

  @override
  bool equals(MeditacionesRecord? e1, MeditacionesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.longDescription == e2?.longDescription &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.audioUrl == e2?.audioUrl &&
        e1?.duration == e2?.duration &&
        e1?.category == e2?.category &&
        e1?.createdAt == e2?.createdAt &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(MeditacionesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.shortDescription,
        e?.longDescription,
        e?.imageUrl,
        e?.audioUrl,
        e?.duration,
        e?.category,
        e?.createdAt,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is MeditacionesRecord;
}
