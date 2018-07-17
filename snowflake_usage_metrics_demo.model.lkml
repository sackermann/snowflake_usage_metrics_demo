connection: "snowflake_att_usage_metrics_demo"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: snowflake_usage_metrics_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: snowflake_usage_metrics_demo_default_datagroup

explore: login_history {
#   join: user_login_facts {
#     view_label: "Login History"
#     type: left_outer
#     sql_on: ${user_login_facts.login_name} = ${login_history.user_name} ;;
#     relationship: many_to_many
#   }
}

explore: query_history {
  join: databases {
    type: left_outer
    sql_on: ${query_history.database_name} = ${databases.database_name} ;;
    relationship: many_to_one
  }
}

explore: storage_usage {}

explore: warehouse_metering_history {}
