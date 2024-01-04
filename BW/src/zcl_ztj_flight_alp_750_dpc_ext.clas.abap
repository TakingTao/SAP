class ZCL_ZTJ_FLIGHT_ALP_750_DPC_EXT definition
  public
  inheriting from ZCL_ZTJ_FLIGHT_ALP_750_DPC
  create public .

public section.

  methods IF_SADL_GW_QUERY_CONTROL~SET_QUERY_OPTIONS
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ZTJ_FLIGHT_ALP_750_DPC_EXT IMPLEMENTATION.


  METHOD if_sadl_gw_query_control~set_query_options.

    io_query_options->set_aggregation(
      VALUE #(
        ( element = 'FLTIME' alias = 'FLTIME' type = if_sadl_gw_query_options=>co_aggregation_type-max )
      )
    ).

    io_query_options->set_business_key_for_analytics( VALUE #( ( `ProductID` ) ) ).

  ENDMETHOD.
ENDCLASS.
