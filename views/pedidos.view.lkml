view: pedidos {
  sql_table_name: `coe-academy-gcp.looker_academy.Pedidos` ;;

  dimension: beneficio {
    type: number
    sql: ${TABLE}.Beneficio ;;
  }
  dimension: quantidade {
    type: number
    hidden: yes
    sql: ${TABLE}.Cantidad ;;
  }
  dimension: custo_envio {
    type: number
    hidden: yes
    sql: ${TABLE}.Costo_envio ;;
  }
  dimension: desconto {
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
  dimension_group: data_pedido {
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
  dimension: prioridade_pedido {
    type: string
    sql: ${TABLE}.Prioridad_pedido ;;
  }
  dimension: vendas {
    type: number
    hidden: yes
    sql: ${TABLE}.Ventas ;;
  }
  measure: count {
    type: count
  }

  measure: Quantidade{
   type: sum
   label: "Quantidade"
   sql:  ${quantidade};;
  }
  measure: CustoEnvio{
    type: sum
    label: "CustoEnvio"
    sql:  ${custo_envio};;
  }
  measure: Vendas{
    type: sum
    label: "Vendas"
    sql:  ${vendas};;
  }
}
