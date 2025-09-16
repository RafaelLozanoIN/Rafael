view: paso_er {
  sql_table_name: `coe-academy-gcp.looker_academy.PasoER` ;;

  dimension: index {
    type: number
    sql: ${TABLE}.Index ;;
  }
  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
  }
}
