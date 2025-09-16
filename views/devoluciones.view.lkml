view: devoluciones {
  sql_table_name: `coe-academy-gcp.looker_academy.Devoluciones` ;;

  dimension: devolucao {
    type: string
    sql: ${TABLE}.Devuelto ;;
  }
  dimension: id_pedido {
    type: string
    sql: ${TABLE}.ID_pedido ;;
  }
  dimension: regiao {
    type: string
    sql: ${TABLE}.Region ;;
  }
  measure: count {
    type: count
  }
}
