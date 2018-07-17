- dashboard: snowflake_storage_metrics
  title: Snowflake Usage
  layout: newspaper
  elements:
  - name: Warehouse Metering History - Total Credits by Month
    title: Warehouse Metering History - Total Credits by Month
    model: snowflake_usage_metrics_demo
    explore: warehouse_metering_history
    type: looker_column
    fields:
    - warehouse_metering_history.start_month
    - warehouse_metering_history.total_credits_used
    - warehouse_metering_history.warehouse_name
    pivots:
    - warehouse_metering_history.warehouse_name
    fill_fields:
    - warehouse_metering_history.start_month
    filters:
      warehouse_metering_history.start_month: 2 months
      warehouse_metering_history.warehouse_name: DEMO^_WH^_BKUP
    sorts:
    - warehouse_metering_history.warehouse_name 0
    - warehouse_metering_history.start_month
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    show_dropoff: false
    colors:
    - 'palette: Santa Cruz'
    series_colors:
      DEMO_WH_BKUP - warehouse_metering_history.total_credits_used: "#548de9"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    y_axes:
    - label: Total Credits Used
      orientation: left
      series:
      - id: DEMO_WH_BKUP - warehouse_metering_history.total_credits_used
        name: DEMO_WH_BKUP
        axisId: warehouse_metering_history.total_credits_used
      showLabels: true
      showValues: true
      maxValue:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 7
      type: linear
    x_axis_datetime_tick_count: 2
    x_padding_left: 0
    x_padding_right: 0
    x_axis_label: Month
    row: 10
    col: 0
    width: 12
    height: 6
  - title: Average Credits Used by Month
    name: Average Credits Used by Month
    model: snowflake_usage_metrics_demo
    explore: warehouse_metering_history
    type: looker_column
    fields:
    - warehouse_metering_history.warehouse_name
    - warehouse_metering_history.start_month
    - warehouse_metering_history.average_credits_used
    pivots:
    - warehouse_metering_history.warehouse_name
    fill_fields:
    - warehouse_metering_history.start_month
    filters:
      warehouse_metering_history.warehouse_name: DEMO^_WH^_BKUP
      warehouse_metering_history.start_month: 2 months
    sorts:
    - warehouse_metering_history.start_month desc
    - warehouse_metering_history.warehouse_name
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors:
    - 'palette: Santa Cruz'
    series_colors: {}
    x_axis_label: Month
    row: 10
    col: 12
    width: 12
    height: 6
  - title: Total Jobs (MTD)
    name: Total Jobs (MTD)
    model: snowflake_usage_metrics_demo
    explore: query_history
    type: single_value
    fields:
    - query_history.current_mtd_query_count
    - query_history.prior_mtd_query_count
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Total Jobs by Warehouse (MTD)
    name: Total Jobs by Warehouse (MTD)
    model: snowflake_usage_metrics_demo
    explore: warehouse_metering_history
    type: looker_column
    fields:
    - warehouse_metering_history.warehouse_name
    - warehouse_metering_history.prior_mtd_credits_used
    - warehouse_metering_history.current_mtd_credits_used
    sorts:
    - warehouse_metering_history.prior_mtd_credits_used desc
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors:
    - 'palette: Santa Cruz'
    series_colors:
      warehouse_metering_history.current_mtd_credits_used: "#61b1ed"
      warehouse_metering_history.prior_mtd_credits_used: "#071df8"
    y_axes:
    - label: Job Count
      orientation: left
      series:
      - id: warehouse_metering_history.prior_mtd_credits_used
        name: Warehouse Metering History Prior Mtd Credits Used
        axisId: warehouse_metering_history.prior_mtd_credits_used
      - id: warehouse_metering_history.current_mtd_credits_used
        name: Warehouse Metering History Current Mtd Credits Used
        axisId: warehouse_metering_history.current_mtd_credits_used
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    row: 4
    col: 0
    width: 16
    height: 6
  - title: Average Execution Time by User (MTD)
    name: Average Execution Time by User (MTD)
    model: snowflake_usage_metrics_demo
    explore: query_history
    type: looker_column
    fields:
    - query_history.user_name
    - query_history.average_execution_time
    filters:
      query_history.start_month: 1 months
    sorts:
    - query_history.average_execution_time desc
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors:
    - 'palette: Santa Cruz'
    series_colors: {}
    y_axes:
    - label: Average Execution Time (secs)
      orientation: left
      series:
      - id: query_history.average_execution_time
        name: Average Execution Time
        axisId: query_history.average_execution_time
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    row: 22
    col: 0
    width: 12
    height: 6
  - title: Average Execution Time by Query Type and Warehouse Size (MTD)
    name: Average Execution Time by Query Type and Warehouse Size (MTD)
    model: snowflake_usage_metrics_demo
    explore: query_history
    type: looker_column
    fields:
    - query_history.average_execution_time
    - query_history.query_type
    - query_history.warehouse_size
    pivots:
    - query_history.warehouse_size
    filters:
      query_history.start_month: 1 months
    sorts:
    - query_history.average_execution_time desc 0
    - query_history.warehouse_size 0
    limit: 500
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors:
    - 'palette: Santa Cruz'
    series_colors: {}
    y_axes:
    - label: Average Execution Time (secs)
      orientation: left
      series:
      - id: UNKNOWN - query_history.average_execution_time
        name: UNKNOWN
        axisId: query_history.average_execution_time
      - id: XLARGE - query_history.average_execution_time
        name: XLARGE
        axisId: query_history.average_execution_time
      - id: XSMALL - query_history.average_execution_time
        name: XSMALL
        axisId: query_history.average_execution_time
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    row: 22
    col: 12
    width: 12
    height: 6
  - title: Credits Used (MTD)
    name: Credits Used (MTD)
    model: snowflake_usage_metrics_demo
    explore: warehouse_metering_history
    type: single_value
    fields:
    - warehouse_metering_history.current_mtd_credits_used
    - warehouse_metering_history.prior_mtd_credits_used
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 0
    col: 6
    width: 6
    height: 4
  - title: Avg Execution Time in Secs (MTD)
    name: Avg Execution Time in Secs (MTD)
    model: snowflake_usage_metrics
    explore: query_history
    type: single_value
    fields:
    - query_history.current_mtd_avg_exec_time
    - query_history.prior_mtd_avg_exec_time
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 0
    col: 12
    width: 6
    height: 4
  - title: Billable TB (MTD)
    name: Billable TB (MTD)
    model: snowflake_usage_metrics_demo
    explore: storage_usage
    type: single_value
    fields:
    - storage_usage.curr_mtd_billable_tb
    - storage_usage.prior_mtd_billable_tb
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 0
    col: 18
    width: 6
    height: 4
  - title: Credits Used by Warehouse (MTD)
    name: Credits Used by Warehouse (MTD)
    model: snowflake_usage_metrics_demo
    explore: warehouse_metering_history
    type: looker_column
    fields:
    - warehouse_metering_history.warehouse_name
    - warehouse_metering_history.total_credits_used
    filters:
      warehouse_metering_history.start_month: 1 months
    sorts:
    - warehouse_metering_history.total_credits_used desc
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors:
    - 'palette: Santa Cruz'
    series_colors: {}
    row: 4
    col: 16
    width: 8
    height: 6
  - title: Billable TB Over Time
    name: Billable TB Over Time
    model: snowflake_usage_metrics_demo
    explore: storage_usage
    type: looker_line
    fields:
    - storage_usage.billable_tb
    - storage_usage.usage_month
    fill_fields:
    - storage_usage.usage_month
    filters:
      storage_usage.usage_month: 2 months
    sorts:
    - storage_usage.usage_month desc
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    font_size: 8px
    y_axes:
    - label: Billable TB
      orientation: left
      series:
      - id: storage_usage.billable_tb
        name: Storage Usage Billable Tb
        axisId: storage_usage.billable_tb
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_label: Month
    hide_legend: false
    colors:
    - 'palette: Santa Cruz'
    series_colors: {}
    row: 16
    col: 0
    width: 12
    height: 6
  - title: Credits Used Over Time by Warehouse (MTD)
    name: Credits Used Over Time by Warehouse (MTD)
    model: snowflake_usage_metrics_demo
    explore: warehouse_metering_history
    type: looker_line
    fields:
    - warehouse_metering_history.warehouse_name
    - warehouse_metering_history.total_credits_used
    - warehouse_metering_history.start_date
    pivots:
    - warehouse_metering_history.warehouse_name
    fill_fields:
    - warehouse_metering_history.start_date
    filters:
      warehouse_metering_history.start_date: 1 months
    sorts:
    - warehouse_metering_history.start_date desc
    - warehouse_metering_history.warehouse_name
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - 'palette: Santa Cruz'
    series_colors:
      DEMO_WH_BKUP - warehouse_metering_history.total_credits_used: "#00a2ff"
    row: 16
    col: 12
    width: 12
    height: 6
