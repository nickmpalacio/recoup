<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="9f98e98e-4ba2-4051-b6af-9f79d7c296a3"
>
  <SqlQueryUnified
    id="getProjectsQuery"
    notificationDuration={4.5}
    query={include("../lib/getProjectsQuery.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="6b4e83d6-5caf-4bde-ba43-30744d505ecb"
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getTasksQuery"
    notificationDuration={4.5}
    query={include("../lib/getTasksQuery.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="6b4e83d6-5caf-4bde-ba43-30744d505ecb"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="getProjectTestDataQuery"
    notificationDuration={4.5}
    query={include("../lib/getProjectTestDataQuery.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="6b4e83d6-5caf-4bde-ba43-30744d505ecb"
    showSuccessToaster={false}
  />
  <Include src="./modalCreateProject.rsx" />
  <Include src="./modalCreateTask.rsx" />
  <Include src="./modalEditProject.rsx" />
  <Include src="./modalEditTask.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text
      id="appTitle"
      value="# Project Management Dashboard"
      verticalAlign="center"
    />
    <Include src="./projectsSection.rsx" />
    <Include src="./tasksSection.rsx" />
    <Table
      id="testingTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getProjectTestDataQuery.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="f43d4"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="f43d4"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="none"
        key="id"
        label="ID"
        position="center"
        referenceId="id"
        size={90}
        summaryAggregationMode="none"
      />
      <Column
        id="34a6d"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="test_name"
        label="Test name"
        position="center"
        referenceId="test_name"
        size={220}
        summaryAggregationMode="none"
      />
      <Column
        id="bbc86"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="test_status"
        label="Status"
        position="center"
        referenceId="test_status"
        size={120}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="098c6"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="test_category"
        label="Category"
        position="center"
        referenceId="test_category"
        size={160}
        summaryAggregationMode="none"
      />
      <Column
        id="03a53"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="execution_date"
        label="Execution date"
        position="center"
        referenceId="execution_date"
        size={140}
        summaryAggregationMode="none"
      />
      <Column
        id="2a3fe"
        alignment="center"
        format="boolean"
        groupAggregationMode="none"
        key="passed"
        label="Passed"
        position="center"
        referenceId="passed"
        size={90}
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
          id="65dfd12a"
          event="clickToolbar"
          method="exportData"
          pluginId="testingTable"
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
          id="22a03af2"
          event="clickToolbar"
          method="refresh"
          pluginId="testingTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
