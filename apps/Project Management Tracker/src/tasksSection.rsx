<Container
  id="tasksSection"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="8px 12px"
  showBody={true}
  showHeader={true}
  style={{ border: "surfacePrimaryBorder", borderRadius: "8px" }}
>
  <Header>
    <Text id="tasksSectionTitle" value="## Tasks" verticalAlign="center" />
    <Select
      id="taskStatusFilter"
      emptyMessage="No options"
      itemMode="static"
      label="Status"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
    <TextInput
      id="taskSearchInput"
      label="Search tasks"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Button
      id="createTaskButton"
      style={{ map: { borderRadius: "8px" } }}
      text="Create New Task"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Table
      id="tasksTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getTasksQuery.data }}"
      defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
      emptyMessage="No tasks found"
      enableSaveActions={true}
      primaryKeyColumnId="e37c7"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ rowSeparator: "rgb(226, 232, 240)" }}
      toolbarPosition="bottom"
    >
      <Column
        id="e37c7"
        alignment="right"
        format="decimal"
        formatOptions={{ showSeparators: false }}
        groupAggregationMode="countDistinct"
        key="id"
        label="ID"
        position="left"
        referenceId="id"
        size={72}
        summaryAggregationMode="none"
      />
      <Column
        id="627f4"
        alignment="left"
        caption="{{ currentSourceRow.email }}"
        format="avatar"
        groupAggregationMode="none"
        key="email"
        label="Owner"
        position="center"
        referenceId="owner"
        size={220}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.first_name }} {{ currentSourceRow.last_name }}"
      />
      <Column
        id="958d8"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        referenceId="status"
        size={120}
        summaryAggregationMode="none"
      />
      <Column
        id="0f13e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false }}
        groupAggregationMode="none"
        key="project_id"
        label="Project ID"
        position="center"
        referenceId="project_id"
        size={96}
        summaryAggregationMode="none"
      />
      <Column
        id="1d701"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "yyyy-MM-dd" }}
        groupAggregationMode="none"
        key="created_at"
        label="Created at"
        position="center"
        referenceId="created_at"
        size={140}
        summaryAggregationMode="none"
      />
      <Column
        id="3a715"
        alignment="left"
        cellTooltipMode="overflow"
        format="date"
        formatOptions={{ dateFormat: "yyyy-MM-dd" }}
        groupAggregationMode="none"
        key="due_date"
        label="Due date"
        placeholder="Select options"
        position="center"
        referenceId="due_date"
        size={140}
        summaryAggregationMode="none"
      />
      <Column
        id="f8145"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "yyyy-MM-dd" }}
        groupAggregationMode="none"
        key="updated_at"
        label="Updated at"
        position="center"
        referenceId="updated_at"
        size={140}
        summaryAggregationMode="none"
      />
      <Column
        id="238a5"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        groupAggregationMode="none"
        key="description"
        label="Description"
        position="center"
        referenceId="description"
        size={260}
        summaryAggregationMode="none"
      />
      <Column
        id="8935f"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="title"
        label="Title"
        position="center"
        referenceId="title"
        size={220}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          id="bf61a06d"
          event="clickToolbar"
          method="exportData"
          pluginId="tasksTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="ddb71bd1"
          event="clickToolbar"
          method="refresh"
          pluginId="tasksTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
</Container>
