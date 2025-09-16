view: vendedores {
  sql_table_name: `coe-academy-gcp.looker_academy.Vendedores` ;;

  dimension: regiao {
    type: string
    sql: ${TABLE}.Region ;;
  }
  dimension: vendedor {
    type: string
    sql: ${TABLE}.Vendedor ;;
  }
  measure: count {
    type: count
  }
}
