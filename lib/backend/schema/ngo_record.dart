import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NgoRecord extends FirestoreRecord {
  NgoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ngoId" field.
  int? _ngoId;
  int get ngoId => _ngoId ?? 0;
  bool hasNgoId() => _ngoId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "ngoname" field.
  String? _ngoname;
  String get ngoname => _ngoname ?? '';
  bool hasNgoname() => _ngoname != null;

  // "skillsRequired" field.
  String? _skillsRequired;
  String get skillsRequired => _skillsRequired ?? '';
  bool hasSkillsRequired() => _skillsRequired != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _ngoId = castToType<int>(snapshotData['ngoId']);
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _ngoname = snapshotData['ngoname'] as String?;
    _skillsRequired = snapshotData['skillsRequired'] as String?;
    _duration = snapshotData['duration'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ngo');

  static Stream<NgoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NgoRecord.fromSnapshot(s));

  static Future<NgoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NgoRecord.fromSnapshot(s));

  static NgoRecord fromSnapshot(DocumentSnapshot snapshot) => NgoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NgoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NgoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NgoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NgoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNgoRecordData({
  int? ngoId,
  String? title,
  String? description,
  String? ngoname,
  String? skillsRequired,
  String? duration,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ngoId': ngoId,
      'title': title,
      'description': description,
      'ngoname': ngoname,
      'skillsRequired': skillsRequired,
      'duration': duration,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class NgoRecordDocumentEquality implements Equality<NgoRecord> {
  const NgoRecordDocumentEquality();

  @override
  bool equals(NgoRecord? e1, NgoRecord? e2) {
    return e1?.ngoId == e2?.ngoId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.ngoname == e2?.ngoname &&
        e1?.skillsRequired == e2?.skillsRequired &&
        e1?.duration == e2?.duration &&
        e1?.status == e2?.status;
  }

  @override
  int hash(NgoRecord? e) => const ListEquality().hash([
        e?.ngoId,
        e?.title,
        e?.description,
        e?.ngoname,
        e?.skillsRequired,
        e?.duration,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is NgoRecord;
}
