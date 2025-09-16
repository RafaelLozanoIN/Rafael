view: mercado {
  sql_table_name: `coe-academy-gcp.looker_academy.Mercado` ;;

  dimension: cidade {
    type: string
    sql: ${TABLE}.Ciudad ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }
  dimension: id_mercado {
    type: string
    sql: ${TABLE}.Id_Mercado ;;
  }
  dimension: mercado {
    type: string
    sql: ${TABLE}.Mercado ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.Pais ;;
  }
  dimension: regiao {
    type: string
    sql: ${TABLE}.Region ;;
  }
  measure: count {
    type: count
  }
}
