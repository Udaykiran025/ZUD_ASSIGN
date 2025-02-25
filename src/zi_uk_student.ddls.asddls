@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface or cds view for student table'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_UK_STUDENT
  as select from zuk_student
  composition [1..*] of ZI_UK_MARKS as _marks
{
  key student_id    as StudentId,
      student_name  as StudentName,
      age           as Age,
      class         as Class,
      class_section as ClassSection,
      avg_marks     as AvgMarks,
      _marks
}
