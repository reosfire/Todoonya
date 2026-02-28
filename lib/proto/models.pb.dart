//
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ProtoDailyRecurrence extends $pb.GeneratedMessage {
  factory ProtoDailyRecurrence() => create();
  ProtoDailyRecurrence._() : super();
  factory ProtoDailyRecurrence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoDailyRecurrence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoDailyRecurrence', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoDailyRecurrence clone() => ProtoDailyRecurrence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoDailyRecurrence copyWith(void Function(ProtoDailyRecurrence) updates) => super.copyWith((message) => updates(message as ProtoDailyRecurrence)) as ProtoDailyRecurrence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoDailyRecurrence create() => ProtoDailyRecurrence._();
  ProtoDailyRecurrence createEmptyInstance() => create();
  static $pb.PbList<ProtoDailyRecurrence> createRepeated() => $pb.PbList<ProtoDailyRecurrence>();
  @$core.pragma('dart2js:noInline')
  static ProtoDailyRecurrence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoDailyRecurrence>(create);
  static ProtoDailyRecurrence? _defaultInstance;
}

class ProtoEveryNDaysRecurrence extends $pb.GeneratedMessage {
  factory ProtoEveryNDaysRecurrence({
    $core.int? interval,
  }) {
    final $result = create();
    if (interval != null) {
      $result.interval = interval;
    }
    return $result;
  }
  ProtoEveryNDaysRecurrence._() : super();
  factory ProtoEveryNDaysRecurrence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoEveryNDaysRecurrence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoEveryNDaysRecurrence', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'interval', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoEveryNDaysRecurrence clone() => ProtoEveryNDaysRecurrence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoEveryNDaysRecurrence copyWith(void Function(ProtoEveryNDaysRecurrence) updates) => super.copyWith((message) => updates(message as ProtoEveryNDaysRecurrence)) as ProtoEveryNDaysRecurrence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoEveryNDaysRecurrence create() => ProtoEveryNDaysRecurrence._();
  ProtoEveryNDaysRecurrence createEmptyInstance() => create();
  static $pb.PbList<ProtoEveryNDaysRecurrence> createRepeated() => $pb.PbList<ProtoEveryNDaysRecurrence>();
  @$core.pragma('dart2js:noInline')
  static ProtoEveryNDaysRecurrence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoEveryNDaysRecurrence>(create);
  static ProtoEveryNDaysRecurrence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get interval => $_getIZ(0);
  @$pb.TagNumber(1)
  set interval($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInterval() => $_has(0);
  @$pb.TagNumber(1)
  void clearInterval() => clearField(1);
}

class ProtoWeeklyRecurrence extends $pb.GeneratedMessage {
  factory ProtoWeeklyRecurrence({
    $core.Iterable<$core.int>? weekdays,
  }) {
    final $result = create();
    if (weekdays != null) {
      $result.weekdays.addAll(weekdays);
    }
    return $result;
  }
  ProtoWeeklyRecurrence._() : super();
  factory ProtoWeeklyRecurrence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoWeeklyRecurrence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoWeeklyRecurrence', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'weekdays', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoWeeklyRecurrence clone() => ProtoWeeklyRecurrence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoWeeklyRecurrence copyWith(void Function(ProtoWeeklyRecurrence) updates) => super.copyWith((message) => updates(message as ProtoWeeklyRecurrence)) as ProtoWeeklyRecurrence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoWeeklyRecurrence create() => ProtoWeeklyRecurrence._();
  ProtoWeeklyRecurrence createEmptyInstance() => create();
  static $pb.PbList<ProtoWeeklyRecurrence> createRepeated() => $pb.PbList<ProtoWeeklyRecurrence>();
  @$core.pragma('dart2js:noInline')
  static ProtoWeeklyRecurrence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoWeeklyRecurrence>(create);
  static ProtoWeeklyRecurrence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get weekdays => $_getList(0);
}

class ProtoMonthlyRecurrence extends $pb.GeneratedMessage {
  factory ProtoMonthlyRecurrence({
    $core.int? dayOfMonth,
  }) {
    final $result = create();
    if (dayOfMonth != null) {
      $result.dayOfMonth = dayOfMonth;
    }
    return $result;
  }
  ProtoMonthlyRecurrence._() : super();
  factory ProtoMonthlyRecurrence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoMonthlyRecurrence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoMonthlyRecurrence', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'dayOfMonth', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoMonthlyRecurrence clone() => ProtoMonthlyRecurrence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoMonthlyRecurrence copyWith(void Function(ProtoMonthlyRecurrence) updates) => super.copyWith((message) => updates(message as ProtoMonthlyRecurrence)) as ProtoMonthlyRecurrence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoMonthlyRecurrence create() => ProtoMonthlyRecurrence._();
  ProtoMonthlyRecurrence createEmptyInstance() => create();
  static $pb.PbList<ProtoMonthlyRecurrence> createRepeated() => $pb.PbList<ProtoMonthlyRecurrence>();
  @$core.pragma('dart2js:noInline')
  static ProtoMonthlyRecurrence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoMonthlyRecurrence>(create);
  static ProtoMonthlyRecurrence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dayOfMonth => $_getIZ(0);
  @$pb.TagNumber(1)
  set dayOfMonth($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDayOfMonth() => $_has(0);
  @$pb.TagNumber(1)
  void clearDayOfMonth() => clearField(1);
}

class ProtoYearlyRecurrence extends $pb.GeneratedMessage {
  factory ProtoYearlyRecurrence({
    $core.int? month,
    $core.int? dayOfMonth,
  }) {
    final $result = create();
    if (month != null) {
      $result.month = month;
    }
    if (dayOfMonth != null) {
      $result.dayOfMonth = dayOfMonth;
    }
    return $result;
  }
  ProtoYearlyRecurrence._() : super();
  factory ProtoYearlyRecurrence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoYearlyRecurrence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoYearlyRecurrence', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'month', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'dayOfMonth', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoYearlyRecurrence clone() => ProtoYearlyRecurrence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoYearlyRecurrence copyWith(void Function(ProtoYearlyRecurrence) updates) => super.copyWith((message) => updates(message as ProtoYearlyRecurrence)) as ProtoYearlyRecurrence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoYearlyRecurrence create() => ProtoYearlyRecurrence._();
  ProtoYearlyRecurrence createEmptyInstance() => create();
  static $pb.PbList<ProtoYearlyRecurrence> createRepeated() => $pb.PbList<ProtoYearlyRecurrence>();
  @$core.pragma('dart2js:noInline')
  static ProtoYearlyRecurrence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoYearlyRecurrence>(create);
  static ProtoYearlyRecurrence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get month => $_getIZ(0);
  @$pb.TagNumber(1)
  set month($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMonth() => $_has(0);
  @$pb.TagNumber(1)
  void clearMonth() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get dayOfMonth => $_getIZ(1);
  @$pb.TagNumber(2)
  set dayOfMonth($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDayOfMonth() => $_has(1);
  @$pb.TagNumber(2)
  void clearDayOfMonth() => clearField(2);
}

enum ProtoRecurrenceRule_Rule {
  daily, 
  everyNDays, 
  weekly, 
  monthly, 
  yearly, 
  notSet
}

class ProtoRecurrenceRule extends $pb.GeneratedMessage {
  factory ProtoRecurrenceRule({
    ProtoDailyRecurrence? daily,
    ProtoEveryNDaysRecurrence? everyNDays,
    ProtoWeeklyRecurrence? weekly,
    ProtoMonthlyRecurrence? monthly,
    ProtoYearlyRecurrence? yearly,
  }) {
    final $result = create();
    if (daily != null) {
      $result.daily = daily;
    }
    if (everyNDays != null) {
      $result.everyNDays = everyNDays;
    }
    if (weekly != null) {
      $result.weekly = weekly;
    }
    if (monthly != null) {
      $result.monthly = monthly;
    }
    if (yearly != null) {
      $result.yearly = yearly;
    }
    return $result;
  }
  ProtoRecurrenceRule._() : super();
  factory ProtoRecurrenceRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoRecurrenceRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ProtoRecurrenceRule_Rule> _ProtoRecurrenceRule_RuleByTag = {
    1 : ProtoRecurrenceRule_Rule.daily,
    2 : ProtoRecurrenceRule_Rule.everyNDays,
    3 : ProtoRecurrenceRule_Rule.weekly,
    4 : ProtoRecurrenceRule_Rule.monthly,
    5 : ProtoRecurrenceRule_Rule.yearly,
    0 : ProtoRecurrenceRule_Rule.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoRecurrenceRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<ProtoDailyRecurrence>(1, _omitFieldNames ? '' : 'daily', subBuilder: ProtoDailyRecurrence.create)
    ..aOM<ProtoEveryNDaysRecurrence>(2, _omitFieldNames ? '' : 'everyNDays', subBuilder: ProtoEveryNDaysRecurrence.create)
    ..aOM<ProtoWeeklyRecurrence>(3, _omitFieldNames ? '' : 'weekly', subBuilder: ProtoWeeklyRecurrence.create)
    ..aOM<ProtoMonthlyRecurrence>(4, _omitFieldNames ? '' : 'monthly', subBuilder: ProtoMonthlyRecurrence.create)
    ..aOM<ProtoYearlyRecurrence>(5, _omitFieldNames ? '' : 'yearly', subBuilder: ProtoYearlyRecurrence.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoRecurrenceRule clone() => ProtoRecurrenceRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoRecurrenceRule copyWith(void Function(ProtoRecurrenceRule) updates) => super.copyWith((message) => updates(message as ProtoRecurrenceRule)) as ProtoRecurrenceRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoRecurrenceRule create() => ProtoRecurrenceRule._();
  ProtoRecurrenceRule createEmptyInstance() => create();
  static $pb.PbList<ProtoRecurrenceRule> createRepeated() => $pb.PbList<ProtoRecurrenceRule>();
  @$core.pragma('dart2js:noInline')
  static ProtoRecurrenceRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoRecurrenceRule>(create);
  static ProtoRecurrenceRule? _defaultInstance;

  ProtoRecurrenceRule_Rule whichRule() => _ProtoRecurrenceRule_RuleByTag[$_whichOneof(0)]!;
  void clearRule() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ProtoDailyRecurrence get daily => $_getN(0);
  @$pb.TagNumber(1)
  set daily(ProtoDailyRecurrence v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDaily() => $_has(0);
  @$pb.TagNumber(1)
  void clearDaily() => clearField(1);
  @$pb.TagNumber(1)
  ProtoDailyRecurrence ensureDaily() => $_ensure(0);

  @$pb.TagNumber(2)
  ProtoEveryNDaysRecurrence get everyNDays => $_getN(1);
  @$pb.TagNumber(2)
  set everyNDays(ProtoEveryNDaysRecurrence v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEveryNDays() => $_has(1);
  @$pb.TagNumber(2)
  void clearEveryNDays() => clearField(2);
  @$pb.TagNumber(2)
  ProtoEveryNDaysRecurrence ensureEveryNDays() => $_ensure(1);

  @$pb.TagNumber(3)
  ProtoWeeklyRecurrence get weekly => $_getN(2);
  @$pb.TagNumber(3)
  set weekly(ProtoWeeklyRecurrence v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWeekly() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeekly() => clearField(3);
  @$pb.TagNumber(3)
  ProtoWeeklyRecurrence ensureWeekly() => $_ensure(2);

  @$pb.TagNumber(4)
  ProtoMonthlyRecurrence get monthly => $_getN(3);
  @$pb.TagNumber(4)
  set monthly(ProtoMonthlyRecurrence v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMonthly() => $_has(3);
  @$pb.TagNumber(4)
  void clearMonthly() => clearField(4);
  @$pb.TagNumber(4)
  ProtoMonthlyRecurrence ensureMonthly() => $_ensure(3);

  @$pb.TagNumber(5)
  ProtoYearlyRecurrence get yearly => $_getN(4);
  @$pb.TagNumber(5)
  set yearly(ProtoYearlyRecurrence v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasYearly() => $_has(4);
  @$pb.TagNumber(5)
  void clearYearly() => clearField(5);
  @$pb.TagNumber(5)
  ProtoYearlyRecurrence ensureYearly() => $_ensure(4);
}

class ProtoTask extends $pb.GeneratedMessage {
  factory ProtoTask({
    $core.String? id,
    $core.String? title,
    $core.String? notes,
    $core.bool? isCompleted,
    $fixnum.Int64? createdAtMs,
    $fixnum.Int64? scheduledDateMs,
    ProtoRecurrenceRule? recurrence,
    $core.Iterable<$core.String>? tagIds,
    $core.String? listId,
    $core.String? previousTaskId,
    $core.String? nextTaskId,
    $core.Iterable<$fixnum.Int64>? completedDatesMs,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (notes != null) {
      $result.notes = notes;
    }
    if (isCompleted != null) {
      $result.isCompleted = isCompleted;
    }
    if (createdAtMs != null) {
      $result.createdAtMs = createdAtMs;
    }
    if (scheduledDateMs != null) {
      $result.scheduledDateMs = scheduledDateMs;
    }
    if (recurrence != null) {
      $result.recurrence = recurrence;
    }
    if (tagIds != null) {
      $result.tagIds.addAll(tagIds);
    }
    if (listId != null) {
      $result.listId = listId;
    }
    if (previousTaskId != null) {
      $result.previousTaskId = previousTaskId;
    }
    if (nextTaskId != null) {
      $result.nextTaskId = nextTaskId;
    }
    if (completedDatesMs != null) {
      $result.completedDatesMs.addAll(completedDatesMs);
    }
    return $result;
  }
  ProtoTask._() : super();
  factory ProtoTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'notes')
    ..aOB(4, _omitFieldNames ? '' : 'isCompleted')
    ..aInt64(5, _omitFieldNames ? '' : 'createdAtMs')
    ..aInt64(6, _omitFieldNames ? '' : 'scheduledDateMs')
    ..aOM<ProtoRecurrenceRule>(7, _omitFieldNames ? '' : 'recurrence', subBuilder: ProtoRecurrenceRule.create)
    ..pPS(8, _omitFieldNames ? '' : 'tagIds')
    ..aOS(9, _omitFieldNames ? '' : 'listId')
    ..aOS(10, _omitFieldNames ? '' : 'previousTaskId')
    ..aOS(11, _omitFieldNames ? '' : 'nextTaskId')
    ..p<$fixnum.Int64>(12, _omitFieldNames ? '' : 'completedDatesMs', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTask clone() => ProtoTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTask copyWith(void Function(ProtoTask) updates) => super.copyWith((message) => updates(message as ProtoTask)) as ProtoTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTask create() => ProtoTask._();
  ProtoTask createEmptyInstance() => create();
  static $pb.PbList<ProtoTask> createRepeated() => $pb.PbList<ProtoTask>();
  @$core.pragma('dart2js:noInline')
  static ProtoTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTask>(create);
  static ProtoTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get notes => $_getSZ(2);
  @$pb.TagNumber(3)
  set notes($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotes() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotes() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isCompleted => $_getBF(3);
  @$pb.TagNumber(4)
  set isCompleted($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsCompleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCompleted() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAtMs => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAtMs($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAtMs() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAtMs() => clearField(5);

  /// 0 means "not set" for optional timestamps
  @$pb.TagNumber(6)
  $fixnum.Int64 get scheduledDateMs => $_getI64(5);
  @$pb.TagNumber(6)
  set scheduledDateMs($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasScheduledDateMs() => $_has(5);
  @$pb.TagNumber(6)
  void clearScheduledDateMs() => clearField(6);

  @$pb.TagNumber(7)
  ProtoRecurrenceRule get recurrence => $_getN(6);
  @$pb.TagNumber(7)
  set recurrence(ProtoRecurrenceRule v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRecurrence() => $_has(6);
  @$pb.TagNumber(7)
  void clearRecurrence() => clearField(7);
  @$pb.TagNumber(7)
  ProtoRecurrenceRule ensureRecurrence() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get tagIds => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get listId => $_getSZ(8);
  @$pb.TagNumber(9)
  set listId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasListId() => $_has(8);
  @$pb.TagNumber(9)
  void clearListId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get previousTaskId => $_getSZ(9);
  @$pb.TagNumber(10)
  set previousTaskId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPreviousTaskId() => $_has(9);
  @$pb.TagNumber(10)
  void clearPreviousTaskId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get nextTaskId => $_getSZ(10);
  @$pb.TagNumber(11)
  set nextTaskId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNextTaskId() => $_has(10);
  @$pb.TagNumber(11)
  void clearNextTaskId() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$fixnum.Int64> get completedDatesMs => $_getList(11);
}

class ProtoTaskList extends $pb.GeneratedMessage {
  factory ProtoTaskList({
    $core.String? id,
    $core.String? name,
    $core.bool? hasColor,
    $core.int? colorValue,
    $core.String? folderId,
    $core.int? order,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (hasColor != null) {
      $result.hasColor = hasColor;
    }
    if (colorValue != null) {
      $result.colorValue = colorValue;
    }
    if (folderId != null) {
      $result.folderId = folderId;
    }
    if (order != null) {
      $result.order = order;
    }
    return $result;
  }
  ProtoTaskList._() : super();
  factory ProtoTaskList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTaskList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTaskList', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'hasColor')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'colorValue', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'folderId')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTaskList clone() => ProtoTaskList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTaskList copyWith(void Function(ProtoTaskList) updates) => super.copyWith((message) => updates(message as ProtoTaskList)) as ProtoTaskList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTaskList create() => ProtoTaskList._();
  ProtoTaskList createEmptyInstance() => create();
  static $pb.PbList<ProtoTaskList> createRepeated() => $pb.PbList<ProtoTaskList>();
  @$core.pragma('dart2js:noInline')
  static ProtoTaskList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTaskList>(create);
  static ProtoTaskList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// color_value = 0 and has_color = false means no color
  @$pb.TagNumber(3)
  $core.bool get hasColor => $_getBF(2);
  @$pb.TagNumber(3)
  set hasColor($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearHasColor() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get colorValue => $_getIZ(3);
  @$pb.TagNumber(4)
  set colorValue($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasColorValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearColorValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get folderId => $_getSZ(4);
  @$pb.TagNumber(5)
  set folderId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFolderId() => $_has(4);
  @$pb.TagNumber(5)
  void clearFolderId() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get order => $_getIZ(5);
  @$pb.TagNumber(6)
  set order($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOrder() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrder() => clearField(6);
}

class ProtoFolder extends $pb.GeneratedMessage {
  factory ProtoFolder({
    $core.String? id,
    $core.String? name,
    $core.int? order,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (order != null) {
      $result.order = order;
    }
    return $result;
  }
  ProtoFolder._() : super();
  factory ProtoFolder.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoFolder.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoFolder', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoFolder clone() => ProtoFolder()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoFolder copyWith(void Function(ProtoFolder) updates) => super.copyWith((message) => updates(message as ProtoFolder)) as ProtoFolder;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoFolder create() => ProtoFolder._();
  ProtoFolder createEmptyInstance() => create();
  static $pb.PbList<ProtoFolder> createRepeated() => $pb.PbList<ProtoFolder>();
  @$core.pragma('dart2js:noInline')
  static ProtoFolder getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoFolder>(create);
  static ProtoFolder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);
}

class ProtoTag extends $pb.GeneratedMessage {
  factory ProtoTag({
    $core.String? id,
    $core.String? name,
    $core.int? colorValue,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (colorValue != null) {
      $result.colorValue = colorValue;
    }
    return $result;
  }
  ProtoTag._() : super();
  factory ProtoTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTag', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'colorValue', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTag clone() => ProtoTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTag copyWith(void Function(ProtoTag) updates) => super.copyWith((message) => updates(message as ProtoTag)) as ProtoTag;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTag create() => ProtoTag._();
  ProtoTag createEmptyInstance() => create();
  static $pb.PbList<ProtoTag> createRepeated() => $pb.PbList<ProtoTag>();
  @$core.pragma('dart2js:noInline')
  static ProtoTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTag>(create);
  static ProtoTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get colorValue => $_getIZ(2);
  @$pb.TagNumber(3)
  set colorValue($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColorValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearColorValue() => clearField(3);
}

class ProtoTodayFilter extends $pb.GeneratedMessage {
  factory ProtoTodayFilter() => create();
  ProtoTodayFilter._() : super();
  factory ProtoTodayFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTodayFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTodayFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTodayFilter clone() => ProtoTodayFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTodayFilter copyWith(void Function(ProtoTodayFilter) updates) => super.copyWith((message) => updates(message as ProtoTodayFilter)) as ProtoTodayFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTodayFilter create() => ProtoTodayFilter._();
  ProtoTodayFilter createEmptyInstance() => create();
  static $pb.PbList<ProtoTodayFilter> createRepeated() => $pb.PbList<ProtoTodayFilter>();
  @$core.pragma('dart2js:noInline')
  static ProtoTodayFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTodayFilter>(create);
  static ProtoTodayFilter? _defaultInstance;
}

class ProtoTomorrowFilter extends $pb.GeneratedMessage {
  factory ProtoTomorrowFilter() => create();
  ProtoTomorrowFilter._() : super();
  factory ProtoTomorrowFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTomorrowFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTomorrowFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTomorrowFilter clone() => ProtoTomorrowFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTomorrowFilter copyWith(void Function(ProtoTomorrowFilter) updates) => super.copyWith((message) => updates(message as ProtoTomorrowFilter)) as ProtoTomorrowFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTomorrowFilter create() => ProtoTomorrowFilter._();
  ProtoTomorrowFilter createEmptyInstance() => create();
  static $pb.PbList<ProtoTomorrowFilter> createRepeated() => $pb.PbList<ProtoTomorrowFilter>();
  @$core.pragma('dart2js:noInline')
  static ProtoTomorrowFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTomorrowFilter>(create);
  static ProtoTomorrowFilter? _defaultInstance;
}

class ProtoUpcomingFilter extends $pb.GeneratedMessage {
  factory ProtoUpcomingFilter() => create();
  ProtoUpcomingFilter._() : super();
  factory ProtoUpcomingFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoUpcomingFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoUpcomingFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoUpcomingFilter clone() => ProtoUpcomingFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoUpcomingFilter copyWith(void Function(ProtoUpcomingFilter) updates) => super.copyWith((message) => updates(message as ProtoUpcomingFilter)) as ProtoUpcomingFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoUpcomingFilter create() => ProtoUpcomingFilter._();
  ProtoUpcomingFilter createEmptyInstance() => create();
  static $pb.PbList<ProtoUpcomingFilter> createRepeated() => $pb.PbList<ProtoUpcomingFilter>();
  @$core.pragma('dart2js:noInline')
  static ProtoUpcomingFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoUpcomingFilter>(create);
  static ProtoUpcomingFilter? _defaultInstance;
}

class ProtoOverdueFilter extends $pb.GeneratedMessage {
  factory ProtoOverdueFilter() => create();
  ProtoOverdueFilter._() : super();
  factory ProtoOverdueFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoOverdueFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoOverdueFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoOverdueFilter clone() => ProtoOverdueFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoOverdueFilter copyWith(void Function(ProtoOverdueFilter) updates) => super.copyWith((message) => updates(message as ProtoOverdueFilter)) as ProtoOverdueFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoOverdueFilter create() => ProtoOverdueFilter._();
  ProtoOverdueFilter createEmptyInstance() => create();
  static $pb.PbList<ProtoOverdueFilter> createRepeated() => $pb.PbList<ProtoOverdueFilter>();
  @$core.pragma('dart2js:noInline')
  static ProtoOverdueFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoOverdueFilter>(create);
  static ProtoOverdueFilter? _defaultInstance;
}

class ProtoCompletedFilter extends $pb.GeneratedMessage {
  factory ProtoCompletedFilter() => create();
  ProtoCompletedFilter._() : super();
  factory ProtoCompletedFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoCompletedFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoCompletedFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoCompletedFilter clone() => ProtoCompletedFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoCompletedFilter copyWith(void Function(ProtoCompletedFilter) updates) => super.copyWith((message) => updates(message as ProtoCompletedFilter)) as ProtoCompletedFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoCompletedFilter create() => ProtoCompletedFilter._();
  ProtoCompletedFilter createEmptyInstance() => create();
  static $pb.PbList<ProtoCompletedFilter> createRepeated() => $pb.PbList<ProtoCompletedFilter>();
  @$core.pragma('dart2js:noInline')
  static ProtoCompletedFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoCompletedFilter>(create);
  static ProtoCompletedFilter? _defaultInstance;
}

class ProtoAllTasksFilter extends $pb.GeneratedMessage {
  factory ProtoAllTasksFilter() => create();
  ProtoAllTasksFilter._() : super();
  factory ProtoAllTasksFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoAllTasksFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoAllTasksFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoAllTasksFilter clone() => ProtoAllTasksFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoAllTasksFilter copyWith(void Function(ProtoAllTasksFilter) updates) => super.copyWith((message) => updates(message as ProtoAllTasksFilter)) as ProtoAllTasksFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoAllTasksFilter create() => ProtoAllTasksFilter._();
  ProtoAllTasksFilter createEmptyInstance() => create();
  static $pb.PbList<ProtoAllTasksFilter> createRepeated() => $pb.PbList<ProtoAllTasksFilter>();
  @$core.pragma('dart2js:noInline')
  static ProtoAllTasksFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoAllTasksFilter>(create);
  static ProtoAllTasksFilter? _defaultInstance;
}

class ProtoDateRangeFilter extends $pb.GeneratedMessage {
  factory ProtoDateRangeFilter({
    $core.bool? hasDateFrom,
    $fixnum.Int64? dateFromMs,
    $core.bool? hasDateTo,
    $fixnum.Int64? dateToMs,
  }) {
    final $result = create();
    if (hasDateFrom != null) {
      $result.hasDateFrom = hasDateFrom;
    }
    if (dateFromMs != null) {
      $result.dateFromMs = dateFromMs;
    }
    if (hasDateTo != null) {
      $result.hasDateTo = hasDateTo;
    }
    if (dateToMs != null) {
      $result.dateToMs = dateToMs;
    }
    return $result;
  }
  ProtoDateRangeFilter._() : super();
  factory ProtoDateRangeFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoDateRangeFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoDateRangeFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'hasDateFrom')
    ..aInt64(2, _omitFieldNames ? '' : 'dateFromMs')
    ..aOB(3, _omitFieldNames ? '' : 'hasDateTo')
    ..aInt64(4, _omitFieldNames ? '' : 'dateToMs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoDateRangeFilter clone() => ProtoDateRangeFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoDateRangeFilter copyWith(void Function(ProtoDateRangeFilter) updates) => super.copyWith((message) => updates(message as ProtoDateRangeFilter)) as ProtoDateRangeFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoDateRangeFilter create() => ProtoDateRangeFilter._();
  ProtoDateRangeFilter createEmptyInstance() => create();
  static $pb.PbList<ProtoDateRangeFilter> createRepeated() => $pb.PbList<ProtoDateRangeFilter>();
  @$core.pragma('dart2js:noInline')
  static ProtoDateRangeFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoDateRangeFilter>(create);
  static ProtoDateRangeFilter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasDateFrom => $_getBF(0);
  @$pb.TagNumber(1)
  set hasDateFrom($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasDateFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasDateFrom() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get dateFromMs => $_getI64(1);
  @$pb.TagNumber(2)
  set dateFromMs($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateFromMs() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateFromMs() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get hasDateTo => $_getBF(2);
  @$pb.TagNumber(3)
  set hasDateTo($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHasDateTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearHasDateTo() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get dateToMs => $_getI64(3);
  @$pb.TagNumber(4)
  set dateToMs($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDateToMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearDateToMs() => clearField(4);
}

class ProtoTagsFilter extends $pb.GeneratedMessage {
  factory ProtoTagsFilter({
    $core.Iterable<$core.String>? tagIds,
  }) {
    final $result = create();
    if (tagIds != null) {
      $result.tagIds.addAll(tagIds);
    }
    return $result;
  }
  ProtoTagsFilter._() : super();
  factory ProtoTagsFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTagsFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTagsFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'tagIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTagsFilter clone() => ProtoTagsFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTagsFilter copyWith(void Function(ProtoTagsFilter) updates) => super.copyWith((message) => updates(message as ProtoTagsFilter)) as ProtoTagsFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTagsFilter create() => ProtoTagsFilter._();
  ProtoTagsFilter createEmptyInstance() => create();
  static $pb.PbList<ProtoTagsFilter> createRepeated() => $pb.PbList<ProtoTagsFilter>();
  @$core.pragma('dart2js:noInline')
  static ProtoTagsFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTagsFilter>(create);
  static ProtoTagsFilter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tagIds => $_getList(0);
}

enum ProtoSmartListFilter_Filter {
  today, 
  tomorrow, 
  upcoming, 
  overdue, 
  dateRange, 
  tags, 
  completed, 
  all, 
  notSet
}

class ProtoSmartListFilter extends $pb.GeneratedMessage {
  factory ProtoSmartListFilter({
    ProtoTodayFilter? today,
    ProtoTomorrowFilter? tomorrow,
    ProtoUpcomingFilter? upcoming,
    ProtoOverdueFilter? overdue,
    ProtoDateRangeFilter? dateRange,
    ProtoTagsFilter? tags,
    ProtoCompletedFilter? completed,
    ProtoAllTasksFilter? all,
  }) {
    final $result = create();
    if (today != null) {
      $result.today = today;
    }
    if (tomorrow != null) {
      $result.tomorrow = tomorrow;
    }
    if (upcoming != null) {
      $result.upcoming = upcoming;
    }
    if (overdue != null) {
      $result.overdue = overdue;
    }
    if (dateRange != null) {
      $result.dateRange = dateRange;
    }
    if (tags != null) {
      $result.tags = tags;
    }
    if (completed != null) {
      $result.completed = completed;
    }
    if (all != null) {
      $result.all = all;
    }
    return $result;
  }
  ProtoSmartListFilter._() : super();
  factory ProtoSmartListFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoSmartListFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ProtoSmartListFilter_Filter> _ProtoSmartListFilter_FilterByTag = {
    1 : ProtoSmartListFilter_Filter.today,
    2 : ProtoSmartListFilter_Filter.tomorrow,
    3 : ProtoSmartListFilter_Filter.upcoming,
    4 : ProtoSmartListFilter_Filter.overdue,
    5 : ProtoSmartListFilter_Filter.dateRange,
    6 : ProtoSmartListFilter_Filter.tags,
    7 : ProtoSmartListFilter_Filter.completed,
    8 : ProtoSmartListFilter_Filter.all,
    0 : ProtoSmartListFilter_Filter.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoSmartListFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<ProtoTodayFilter>(1, _omitFieldNames ? '' : 'today', subBuilder: ProtoTodayFilter.create)
    ..aOM<ProtoTomorrowFilter>(2, _omitFieldNames ? '' : 'tomorrow', subBuilder: ProtoTomorrowFilter.create)
    ..aOM<ProtoUpcomingFilter>(3, _omitFieldNames ? '' : 'upcoming', subBuilder: ProtoUpcomingFilter.create)
    ..aOM<ProtoOverdueFilter>(4, _omitFieldNames ? '' : 'overdue', subBuilder: ProtoOverdueFilter.create)
    ..aOM<ProtoDateRangeFilter>(5, _omitFieldNames ? '' : 'dateRange', subBuilder: ProtoDateRangeFilter.create)
    ..aOM<ProtoTagsFilter>(6, _omitFieldNames ? '' : 'tags', subBuilder: ProtoTagsFilter.create)
    ..aOM<ProtoCompletedFilter>(7, _omitFieldNames ? '' : 'completed', subBuilder: ProtoCompletedFilter.create)
    ..aOM<ProtoAllTasksFilter>(8, _omitFieldNames ? '' : 'all', subBuilder: ProtoAllTasksFilter.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoSmartListFilter clone() => ProtoSmartListFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoSmartListFilter copyWith(void Function(ProtoSmartListFilter) updates) => super.copyWith((message) => updates(message as ProtoSmartListFilter)) as ProtoSmartListFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoSmartListFilter create() => ProtoSmartListFilter._();
  ProtoSmartListFilter createEmptyInstance() => create();
  static $pb.PbList<ProtoSmartListFilter> createRepeated() => $pb.PbList<ProtoSmartListFilter>();
  @$core.pragma('dart2js:noInline')
  static ProtoSmartListFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoSmartListFilter>(create);
  static ProtoSmartListFilter? _defaultInstance;

  ProtoSmartListFilter_Filter whichFilter() => _ProtoSmartListFilter_FilterByTag[$_whichOneof(0)]!;
  void clearFilter() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ProtoTodayFilter get today => $_getN(0);
  @$pb.TagNumber(1)
  set today(ProtoTodayFilter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToday() => $_has(0);
  @$pb.TagNumber(1)
  void clearToday() => clearField(1);
  @$pb.TagNumber(1)
  ProtoTodayFilter ensureToday() => $_ensure(0);

  @$pb.TagNumber(2)
  ProtoTomorrowFilter get tomorrow => $_getN(1);
  @$pb.TagNumber(2)
  set tomorrow(ProtoTomorrowFilter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTomorrow() => $_has(1);
  @$pb.TagNumber(2)
  void clearTomorrow() => clearField(2);
  @$pb.TagNumber(2)
  ProtoTomorrowFilter ensureTomorrow() => $_ensure(1);

  @$pb.TagNumber(3)
  ProtoUpcomingFilter get upcoming => $_getN(2);
  @$pb.TagNumber(3)
  set upcoming(ProtoUpcomingFilter v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpcoming() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpcoming() => clearField(3);
  @$pb.TagNumber(3)
  ProtoUpcomingFilter ensureUpcoming() => $_ensure(2);

  @$pb.TagNumber(4)
  ProtoOverdueFilter get overdue => $_getN(3);
  @$pb.TagNumber(4)
  set overdue(ProtoOverdueFilter v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOverdue() => $_has(3);
  @$pb.TagNumber(4)
  void clearOverdue() => clearField(4);
  @$pb.TagNumber(4)
  ProtoOverdueFilter ensureOverdue() => $_ensure(3);

  @$pb.TagNumber(5)
  ProtoDateRangeFilter get dateRange => $_getN(4);
  @$pb.TagNumber(5)
  set dateRange(ProtoDateRangeFilter v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDateRange() => $_has(4);
  @$pb.TagNumber(5)
  void clearDateRange() => clearField(5);
  @$pb.TagNumber(5)
  ProtoDateRangeFilter ensureDateRange() => $_ensure(4);

  @$pb.TagNumber(6)
  ProtoTagsFilter get tags => $_getN(5);
  @$pb.TagNumber(6)
  set tags(ProtoTagsFilter v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTags() => $_has(5);
  @$pb.TagNumber(6)
  void clearTags() => clearField(6);
  @$pb.TagNumber(6)
  ProtoTagsFilter ensureTags() => $_ensure(5);

  @$pb.TagNumber(7)
  ProtoCompletedFilter get completed => $_getN(6);
  @$pb.TagNumber(7)
  set completed(ProtoCompletedFilter v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCompleted() => $_has(6);
  @$pb.TagNumber(7)
  void clearCompleted() => clearField(7);
  @$pb.TagNumber(7)
  ProtoCompletedFilter ensureCompleted() => $_ensure(6);

  @$pb.TagNumber(8)
  ProtoAllTasksFilter get all => $_getN(7);
  @$pb.TagNumber(8)
  set all(ProtoAllTasksFilter v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAll() => $_has(7);
  @$pb.TagNumber(8)
  void clearAll() => clearField(8);
  @$pb.TagNumber(8)
  ProtoAllTasksFilter ensureAll() => $_ensure(7);
}

class ProtoSmartList extends $pb.GeneratedMessage {
  factory ProtoSmartList({
    $core.String? id,
    $core.String? name,
    $core.int? iconCodePoint,
    $core.int? colorValue,
    ProtoSmartListFilter? filter,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (iconCodePoint != null) {
      $result.iconCodePoint = iconCodePoint;
    }
    if (colorValue != null) {
      $result.colorValue = colorValue;
    }
    if (filter != null) {
      $result.filter = filter;
    }
    return $result;
  }
  ProtoSmartList._() : super();
  factory ProtoSmartList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoSmartList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoSmartList', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'iconCodePoint', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'colorValue', $pb.PbFieldType.O3)
    ..aOM<ProtoSmartListFilter>(5, _omitFieldNames ? '' : 'filter', subBuilder: ProtoSmartListFilter.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoSmartList clone() => ProtoSmartList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoSmartList copyWith(void Function(ProtoSmartList) updates) => super.copyWith((message) => updates(message as ProtoSmartList)) as ProtoSmartList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoSmartList create() => ProtoSmartList._();
  ProtoSmartList createEmptyInstance() => create();
  static $pb.PbList<ProtoSmartList> createRepeated() => $pb.PbList<ProtoSmartList>();
  @$core.pragma('dart2js:noInline')
  static ProtoSmartList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoSmartList>(create);
  static ProtoSmartList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get iconCodePoint => $_getIZ(2);
  @$pb.TagNumber(3)
  set iconCodePoint($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIconCodePoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconCodePoint() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get colorValue => $_getIZ(3);
  @$pb.TagNumber(4)
  set colorValue($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasColorValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearColorValue() => clearField(4);

  @$pb.TagNumber(5)
  ProtoSmartListFilter get filter => $_getN(4);
  @$pb.TagNumber(5)
  set filter(ProtoSmartListFilter v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFilter() => $_has(4);
  @$pb.TagNumber(5)
  void clearFilter() => clearField(5);
  @$pb.TagNumber(5)
  ProtoSmartListFilter ensureFilter() => $_ensure(4);
}

class ProtoSyncIndex extends $pb.GeneratedMessage {
  factory ProtoSyncIndex({
    $core.Map<$core.String, $fixnum.Int64>? entities,
    $core.Map<$core.String, $fixnum.Int64>? deletions,
  }) {
    final $result = create();
    if (entities != null) {
      $result.entities.addAll(entities);
    }
    if (deletions != null) {
      $result.deletions.addAll(deletions);
    }
    return $result;
  }
  ProtoSyncIndex._() : super();
  factory ProtoSyncIndex.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoSyncIndex.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoSyncIndex', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..m<$core.String, $fixnum.Int64>(1, _omitFieldNames ? '' : 'entities', entryClassName: 'ProtoSyncIndex.EntitiesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('todo'))
    ..m<$core.String, $fixnum.Int64>(2, _omitFieldNames ? '' : 'deletions', entryClassName: 'ProtoSyncIndex.DeletionsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('todo'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoSyncIndex clone() => ProtoSyncIndex()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoSyncIndex copyWith(void Function(ProtoSyncIndex) updates) => super.copyWith((message) => updates(message as ProtoSyncIndex)) as ProtoSyncIndex;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoSyncIndex create() => ProtoSyncIndex._();
  ProtoSyncIndex createEmptyInstance() => create();
  static $pb.PbList<ProtoSyncIndex> createRepeated() => $pb.PbList<ProtoSyncIndex>();
  @$core.pragma('dart2js:noInline')
  static ProtoSyncIndex getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoSyncIndex>(create);
  static ProtoSyncIndex? _defaultInstance;

  /// key (e.g. "tasks/abc-123") → last-modified timestamp in ms since epoch
  @$pb.TagNumber(1)
  $core.Map<$core.String, $fixnum.Int64> get entities => $_getMap(0);

  /// key → deletion timestamp in ms since epoch
  @$pb.TagNumber(2)
  $core.Map<$core.String, $fixnum.Int64> get deletions => $_getMap(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
