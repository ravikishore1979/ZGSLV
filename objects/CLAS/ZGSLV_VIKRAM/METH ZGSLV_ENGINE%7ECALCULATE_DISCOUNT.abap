    METHOD zgslv_engine~calculate_discount.

    IF iv_amount <= 0.
      rv_discount = 0.
    ELSEIF iv_amount < 1000.
      rv_discount = iv_amount * '0.05'.
    ELSEIF iv_amount < 5000.
      rv_discount = iv_amount * '0.10'.
    ELSE.
      rv_discount = iv_amount * '0.15'.
    ENDIF.

    ENDMETHOD.