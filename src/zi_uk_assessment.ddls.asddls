@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface or cds view for Assessment'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_UK_ASSESSMENT
  as select from zuk_assessment

{
  key assessment_id   as AssessmentId,
      assessment_name as AssessmentName
}
