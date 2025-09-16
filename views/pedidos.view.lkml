view: pedidos {
  sql_table_name: `coe-academy-gcp.looker_academy.Pedidos` ;;

  dimension: beneficio {
    type: number
    sql: ${TABLE}.Beneficio ;;
  }
  dimension: cantidad {
    type: number
    hidden: yes
    sql: ${TABLE}.Cantidad ;;
  }
  dimension: costo_envio {
    type: number
    sql: ${TABLE}.Costo_envio ;;
  }
  dimension: descuento {
    type: number
    sql: ${TABLE}.Descuento ;;
  }
  dimension_group: data_envio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_envio ;;
  }
  dimension_group: fecha_pedido {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_pedido ;;
  }
  dimension: id_cliente {
    type: string
    sql: ${TABLE}.ID_cliente ;;
  }
  dimension: id_fila {
    type: number
    sql: ${TABLE}.ID_fila ;;
  }
  dimension: id_mercado {
    type: string
    sql: ${TABLE}.Id_Mercado ;;
  }
  dimension: id_pedido {
    type: string
    sql: ${TABLE}.ID_pedido ;;
  }
  dimension: id_producto {
    type: string
    sql: ${TABLE}.ID_producto ;;
  }
  dimension: modo_envio {
    type: string
    sql: ${TABLE}.Modo_envio ;;
  }
  dimension: prioridad_pedido {
    type: string
    sql: ${TABLE}.Prioridad_pedido ;;
  }
  dimension: ventas {
    type: number
    sql: ${TABLE}.Ventas ;;
  }
  measure: count {
    type: count
  }

  measure: quantidade{
   type: sum
   label: "Quantidade"
   sql:  ${cantidad};;
  }
}
