@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for marks'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZP_UK_MARKS1
  as projection on ZI_UK_MARKS
{
  key StudentId,

  key AssessmentId,
      @ObjectModel.text.element: [ 'SubjectName' ]
  key SubjectId,
      _subject.SubjectName as SubjectName,
      MarksObtained,
      /* Associations */
      //      _assessment,
      //      _subject ,
      _student : redirected to parent ZP_UK_STUDENT
}
