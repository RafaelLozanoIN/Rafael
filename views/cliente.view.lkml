view: cliente {
  sql_table_name: `coe-academy-gcp.looker_academy.Cliente` ;;

  dimension: id_cliente {
    type: string
    sql: ${TABLE}.ID_cliente ;;
  }
  dimension: nome_cliente {
    type: string
    sql: ${TABLE}.Nombre_cliente ;;
  }
  dimension: segmento {
    type: string
    sql: ${TABLE}.Segmento ;;
  }
  measure: count {
    type: count
  }
}
