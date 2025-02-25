@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface or cds view for Marks'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_UK_MARKS
  as select from zuk_marks
  association     to parent ZI_UK_STUDENT as _student on $projection.StudentId = _student.StudentId
  //  association [1] to ZI_UK_ASSESSMENT     as _assessment on $projection.AssessmentId = _assessment.AssessmentId
  association [1] to ZI_UK_SUBJECTS       as _subject on $projection.SubjectId = _subject.SubjectId
{
  key student_id     as StudentId,
  key assessment_id  as AssessmentId,
  key subject_id     as SubjectId,
      marks_obtained as MarksObtained,
      _student,
      //      _assessment,
      _subject

}
