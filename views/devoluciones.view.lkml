view: devoluciones {
  sql_table_name: `coe-academy-gcp.looker_academy.Devoluciones` ;;

  dimension: devuelto {
    type: string
    sql: ${TABLE}.Devuelto ;;
  }
  dimension: id_pedido {
    type: string
    sql: ${TABLE}.ID_pedido ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }
  measure: count {
    type: count
  }
}
