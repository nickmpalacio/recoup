<Container
  id="projectsSection"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="8px 12px"
  showBody={true}
  showHeader={true}
  style={{ border: "surfacePrimaryBorder", borderRadius: "8px" }}
>
  <Header>
    <Text
      id="projectsSectionTitle"
      value="## Projects"
      verticalAlign="center"
    />
    <Select
      id="projectStatusFilter"
      data="{{ [{ id: '00030', value: 'On Track' }, { id: '00031', value: 'At Risk' }, { id: '00032', value: 'Completed' }] }}"
      emptyMessage="No status options"
      label="Status"
      labelPosition="top"
      labels="{{ item.value }}"
      overlayMaxHeight={375}
      placeholder="Select a status"
      showSelectionIndicator={true}
      values="{{ item.value }}"
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
    <TextInput
      id="projectSearchInput"
      label="Search projects"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Button
      id="createProjectButton"
      style={{ map: { borderRadius: "8px" } }}
      text="Create New Project"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Table
      id="projectsTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getProjectsQuery.data }}"
      defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="c897e"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ rowSeparator: "rgb(226, 232, 240)" }}
      toolbarPosition="bottom"
    >
      <Column
        id="c897e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false }}
        groupAggregationMode="none"
        key="id"
        label="ID"
        position="center"
        referenceId="id"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="631d5"
        alignment="left"
        cellTooltipMode="overflow"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Project"
        position="center"
        referenceId="name"
        size={220}
        summaryAggregationMode="none"
      />
      <Column
        id="9f8d7"
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
        id="99e7e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        position="center"
        referenceId="status"
        size={120}
        summaryAggregationMode="none"
      />
      <Column
        id="22dcf"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="due_date"
        label="Due date"
        position="center"
        referenceId="due_date"
        size={140}
        summaryAggregationMode="none"
      />
      <Column
        id="25e5a"
        alignment="left"
        caption="{{ currentSourceRow.email }}"
        format="avatar"
        groupAggregationMode="none"
        key="email"
        label="Owner"
        position="center"
        referenceId="owner"
        size={240}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.first_name }} {{ currentSourceRow.last_name }}"
      />
      <Column
        id="65e0f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false }}
        groupAggregationMode="none"
        key="owner_id"
        label="Owner ID"
        position="center"
        referenceId="owner_id"
        size={96}
        summaryAggregationMode="none"
      />
      <Column
        id="3a32e"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="created_at"
        label="Created at"
        position="center"
        referenceId="created_at"
        size={160}
        summaryAggregationMode="none"
      />
      <Column
        id="d978e"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="updated_at"
        label="Updated at"
        position="center"
        referenceId="updated_at"
        size={160}
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
          id="870df322"
          event="clickToolbar"
          method="exportData"
          pluginId="projectsTable"
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
          id="fbb735b8"
          event="clickToolbar"
          method="refresh"
          pluginId="projectsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
</Container>
