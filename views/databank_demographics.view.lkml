view: databank_demographics {
  #sql_table_name: "PUBLIC"."DATABANK_DEMOGRAPHICS"
  derived_table: {
    sql:select * from "PUBLIC"."DATABANK_DEMOGRAPHICS" where total_population <> 184530;;
  }


  dimension: country_region {
    primary_key: yes
    type: string
    sql: ${TABLE}."COUNTRY_REGION" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}."FIPS" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  measure: total_female_population {
    type: sum
    sql: ${TABLE}."TOTAL_FEMALE_POPULATION" ;;
  }

  measure: total_male_population {
    type: sum
    sql: ${TABLE}."TOTAL_MALE_POPULATION" ;;
  }

  measure: total_population {
    type: sum
    sql: ${TABLE}."TOTAL_POPULATION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
