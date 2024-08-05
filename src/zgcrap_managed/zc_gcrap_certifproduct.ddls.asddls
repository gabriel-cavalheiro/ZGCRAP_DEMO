@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_GCRAP_CERTIFPRODUCT
  as projection on ZI_GCRAP_CERTIFPRODUCT
{
  key CertUuid,
      Matnr,
      Description,
      Version,
      CertStatus,
      CertCe,
      CertGs,
      CertFcc,
      CertIso,
      CertTuev,
      LocalLastChangedAt,
      /* Associations */
      _Prod,
      _Status: redirected to composition child ZC_GCRAP_CERTIFSTPRODUCT
}
