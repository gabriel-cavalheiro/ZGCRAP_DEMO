@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Certificado Status com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_GCRAP_CERTIFSTPRODUCT
  as select from ZI_GCRAP_CERTIF_ST
  association        to parent ZI_GCRAP_CERTIFPRODUCT as _Certif on  $projection.CertUuid = _Certif.CertUuid
  association [1..1] to ZI_GCRAP_PRODUCT              as _Prod   on  $projection.Matnr = _Prod.Matnr
                                                                 and _Prod.Language    = $session.system_language

{
  key StateUuid,
      CertUuid,
      Matnr,
      _Prod.Description,
      Version,
      Status,
      StatusOld,
      @Semantics.user.lastChangedBy: true
      LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      _Certif
}
