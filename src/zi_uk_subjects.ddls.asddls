@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface or cds view for Subjects'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
//@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZI_UK_SUBJECTS
  as select from zuk_subjects

{
      //      @UI.textArrangement: #TEXT_ONLY
      //      @ObjectModel.text.element: [ 'SubjectId' ]
  key subject_id   as SubjectId,
      subject_name as SubjectName
}
