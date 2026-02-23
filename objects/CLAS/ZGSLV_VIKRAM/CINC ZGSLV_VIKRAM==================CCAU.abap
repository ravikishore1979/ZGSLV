*"* use this source file for your ABAP unit test classes
CLASS ltcl_vikram DEFINITION
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.

    DATA: mo_cut TYPE REF TO zgslv_engine.

    METHODS:
      setup,
      test_zero_amount FOR TESTING,
      test_low_amount FOR TESTING,
      test_medium_amount FOR TESTING,
      test_high_amount FOR TESTING.

ENDCLASS.


CLASS ltcl_vikram IMPLEMENTATION.

  METHOD setup.
    mo_cut = NEW zgslv_vikram( ).
  ENDMETHOD.


  METHOD test_zero_amount.

    DATA(lv_result) = mo_cut->calculate_discount( iv_amount = 0 ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 0 ).

  ENDMETHOD.


  METHOD test_low_amount.

    DATA(lv_result) = mo_cut->calculate_discount( iv_amount = 500 ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 25 ).   "5%

  ENDMETHOD.


  METHOD test_medium_amount.

    DATA(lv_result) = mo_cut->calculate_discount( iv_amount = 2000 ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 200 ).  "10%

  ENDMETHOD.


  METHOD test_high_amount.

    DATA(lv_result) = mo_cut->calculate_discount( iv_amount = 10000 ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 1500 ). "15%

  ENDMETHOD.

ENDCLASS.