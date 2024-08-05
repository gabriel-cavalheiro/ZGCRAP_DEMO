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
    TYPES: tt_certifst TYPE TABLE OF zgcrap_certif_st WITH DEFAULT KEY.


    DELETE FROM zgcrap_certif.
    DELETE FROM zgcrap_certif_st.


    DATA(lt_certif) = VALUE tt_certif(
        ( cert_uuid = '1' matnr = '1' )
        ( cert_uuid = '2' matnr = '2' )
        ( cert_uuid = '3' matnr = '3' )
).

    MODIFY zgcrap_certif FROM TABLE @lt_certif.

    DATA(lt_certifst) = VALUE tt_certifst(
    ( state_uuid = '1' cert_uuid = '1' matnr = '1' )
    ( state_uuid = '2' cert_uuid = '2' matnr = '2' )
    ( state_uuid = '3' cert_uuid = '3' matnr = '3' )
    ( state_uuid = '4' cert_uuid = '4' matnr = '3' )
).

    MODIFY zgcrap_certif_st FROM TABLE @lt_certifst.

    out->write( 'Certificado inseridos com sucesso!!!' ).

  ENDMETHOD.

ENDCLASS.
