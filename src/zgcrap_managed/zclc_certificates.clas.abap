CLASS zclc_certificates DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclc_certificates IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.


    TYPES: tt_certif TYPE TABLE OF zgcrap_certif WITH DEFAULT KEY.

    DELETE FROM zgcrap_certif.

    DATA(lt_certif) = VALUE tt_certif(
        ( cert_uuid = '1' matnr = '1' )
        ( cert_uuid = '2' matnr = '2' )
        ( cert_uuid = '3' matnr = '3' )
).

    MODIFY zgcrap_certif FROM TABLE @lt_certif.

    out->write( 'Certificado inseridos com sucesso!!!' ).

  ENDMETHOD.

ENDCLASS.
