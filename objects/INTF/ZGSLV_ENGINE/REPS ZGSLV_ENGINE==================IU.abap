INTERFACE zgslv_engine
  PUBLIC .

    METHODS calculate_discount
    IMPORTING
      iv_amount TYPE abap_msize
    RETURNING
      VALUE(rv_discount) TYPE abap_msize.

ENDINTERFACE.