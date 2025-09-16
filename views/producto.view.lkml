view: producto {
  sql_table_name: `coe-academy-gcp.looker_academy.Producto` ;;

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }
  dimension: id_producto {
    type: string
    sql: ${TABLE}.ID_producto ;;
  }
  dimension: nome_produto {
    type: string
    sql: ${TABLE}.Nombre_producto ;;
  }
  dimension: subcategoria {
    type: string
    sql: ${TABLE}.Subcategoria ;;
  }
  measure: count {
    type: count
  }
}
