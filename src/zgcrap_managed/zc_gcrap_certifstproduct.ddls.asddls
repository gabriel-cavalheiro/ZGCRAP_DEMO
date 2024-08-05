@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados Status'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_GCRAP_CERTIFSTPRODUCT
  as projection on ZI_GCRAP_CERTIFSTPRODUCT
{
  key StateUuid,
      CertUuid,
      Matnr,
      Description,
      Version,
      Status,
      StatusOld,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Certif: redirected to parent ZC_GCRAP_CERTIFPRODUCT
}
