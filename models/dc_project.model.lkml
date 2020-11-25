connection: "covid19_by_starschema"

# include all the views
include: "/views/**/*.view"

datagroup: dc_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dc_project_default_datagroup

explore: who_reports {
  view_label: "Situation"
  view_name: "Situation_Reports"
  from:  who_situation_reports
}

#
# join: dim_local_authority {
#   view_label: "Local Authorities"
#   type: left_outer
#   relationship: many_to_one
#   sql_on: ${dim_local_authority.id} = ${traffic_data.local_authority_id} ;;
# }
# explore: ct_us_covid_tests {}

# explore: databank_demographics {}

# explore: demographics {}

# explore: ecdc_global {}

# explore: goog_global_mobility_report {}

# explore: hdx_acaps {}

# explore: hs_bulk_data {}

# explore: hum_restrictions_airline {}

# explore: hum_restrictions_country {}

# explore: ihme_covid_19 {}

# explore: jhu_covid_19 {}

# explore: jhu_covid_19_timeseries {}

# explore: jhu_dashboard_covid_19_global {}

# explore: kff_hcp_capacity {}

# explore: kff_us_icu_beds {}

# explore: kff_us_policy_actions {}

# explore: kff_us_reopening_timeline_increment {}

# explore: kff_us_state_mitigations {}

# explore: metadata {}

# explore: nyc_health_tests {}

# explore: nyt_us_covid19 {}

# explore: nyt_us_reopen_status {}

# explore: pcm_dps_covid19 {}

# explore: pcm_dps_covid19_details {}

# explore: rki_ger_covid19_dashboard {}

# explore: scs_be_detailed_hospitalisations {}

# explore: scs_be_detailed_mortality {}

# explore: scs_be_detailed_province_case_counts {}

# explore: scs_be_detailed_tests {}

# explore: vh_can_detailed {}
