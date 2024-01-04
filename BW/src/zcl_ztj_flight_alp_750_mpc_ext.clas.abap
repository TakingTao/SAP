class ZCL_ZTJ_FLIGHT_ALP_750_MPC_EXT definition
  public
  inheriting from ZCL_ZTJ_FLIGHT_ALP_750_MPC
  create public .

public section.

  methods DEFINE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ZTJ_FLIGHT_ALP_750_MPC_EXT IMPLEMENTATION.


  METHOD define.

    super->define( ).

    DATA(lo_entity_type) = model->get_entity_type( 'Spfli' ).
    lo_entity_type->set_semantic(
      /iwbep/if_ana_odata_types=>gcs_ana_odata_semantic_value-query-aggregate
    ).

    DATA(lo_property) = lo_entity_type->get_property( 'GeneratedId' ).
    DATA(lo_annotation) = lo_property->/iwbep/if_mgw_odata_annotatabl~create_annotation(
      /iwbep/if_mgw_med_odata_types=>gc_sap_namespace
    ).

    lo_annotation->add(
      iv_key = /iwbep/if_ana_odata_types=>gcs_ana_odata_annotation_key-aggregation_role
      iv_value = /iwbep/if_ana_odata_types=>gcs_ana_odata_annotation_value-dimension-dimension
    ).

    lo_property = lo_entity_type->get_property( 'Carrid' ).
    lo_annotation = lo_property->/iwbep/if_mgw_odata_annotatabl~create_annotation(
      /iwbep/if_mgw_med_odata_types=>gc_sap_namespace
    ).

    lo_annotation->add(
      iv_key = /iwbep/if_ana_odata_types=>gcs_ana_odata_annotation_key-aggregation_role
      iv_value = /iwbep/if_ana_odata_types=>gcs_ana_odata_annotation_value-dimension-dimension
    ).

    lo_property = lo_entity_type->get_property( 'Connid' ).
    lo_annotation = lo_property->/iwbep/if_mgw_odata_annotatabl~create_annotation(
      /iwbep/if_mgw_med_odata_types=>gc_sap_namespace
    ).

    lo_annotation->add(
      iv_key = /iwbep/if_ana_odata_types=>gcs_ana_odata_annotation_key-aggregation_role
      iv_value = /iwbep/if_ana_odata_types=>gcs_ana_odata_annotation_value-dimension-dimension
    ).


    lo_property = lo_entity_type->get_property( 'Fltime' ).
    lo_annotation = lo_property->/iwbep/if_mgw_odata_annotatabl~create_annotation(
      /iwbep/if_mgw_med_odata_types=>gc_sap_namespace
    ).

    lo_annotation->add(
      iv_key = /iwbep/if_ana_odata_types=>gcs_ana_odata_annotation_key-aggregation_role
      iv_value = /iwbep/if_ana_odata_types=>gcs_ana_odata_annotation_value-measure-measure
    ).

  ENDMETHOD.
ENDCLASS.
