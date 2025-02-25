@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for student'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZP_UK_STUDENT
  provider contract transactional_query
  as projection on ZI_UK_STUDENT
{
  key StudentId,
      StudentName,
      Age,
      Class,
      ClassSection,
      AvgMarks,
      /* Associations */
      _marks : redirected to composition child ZP_UK_MARKS1
}
