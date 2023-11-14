import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OpportunitiesRecord extends FirestoreRecord {
  OpportunitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "opportunityId" field.
  String? _opportunityId;
  String get opportunityId => _opportunityId ?? '';
  bool hasOpportunityId() => _opportunityId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "skillsRequired" field.
  String? _skillsRequired;
  String get skillsRequired => _skillsRequired ?? '';
  bool hasSkillsRequired() => _skillsRequired != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "pointsValue" field.
  int? _pointsValue;
  int get pointsValue => _pointsValue ?? 0;
  bool hasPointsValue() => _pointsValue != null;

  void _initializeFields() {
    _opportunityId = snapshotData['opportunityId'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _company = snapshotData['company'] as String?;
    _skillsRequired = snapshotData['skillsRequired'] as String?;
    _duration = snapshotData['duration'] as String?;
    _location = snapshotData['location'] as String?;
    _pointsValue = castToType<int>(snapshotData['pointsValue']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('opportunities');

  static Stream<OpportunitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OpportunitiesRecord.fromSnapshot(s));

  static Future<OpportunitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OpportunitiesRecord.fromSnapshot(s));

  static OpportunitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OpportunitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OpportunitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OpportunitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OpportunitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OpportunitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOpportunitiesRecordData({
  String? opportunityId,
  String? title,
  String? description,
  String? company,
  String? skillsRequired,
  String? duration,
  String? location,
  int? pointsValue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'opportunityId': opportunityId,
      'title': title,
      'description': description,
      'company': company,
      'skillsRequired': skillsRequired,
      'duration': duration,
      'location': location,
      'pointsValue': pointsValue,
    }.withoutNulls,
  );

  return firestoreData;
}

class OpportunitiesRecordDocumentEquality
    implements Equality<OpportunitiesRecord> {
  const OpportunitiesRecordDocumentEquality();

  @override
  bool equals(OpportunitiesRecord? e1, OpportunitiesRecord? e2) {
    return e1?.opportunityId == e2?.opportunityId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.company == e2?.company &&
        e1?.skillsRequired == e2?.skillsRequired &&
        e1?.duration == e2?.duration &&
        e1?.location == e2?.location &&
        e1?.pointsValue == e2?.pointsValue;
  }

  @override
  int hash(OpportunitiesRecord? e) => const ListEquality().hash([
        e?.opportunityId,
        e?.title,
        e?.description,
        e?.company,
        e?.skillsRequired,
        e?.duration,
        e?.location,
        e?.pointsValue
      ]);

  @override
  bool isValidKey(Object? o) => o is OpportunitiesRecord;
}
