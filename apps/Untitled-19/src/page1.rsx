<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="137b3e9b-e9eb-4ab6-893d-eba8a0b2f9ec"
>
  <SqlQueryUnified
    id="query1"
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="6b4e83d6-5caf-4bde-ba43-30744d505ecb"
    warningCodes={[]}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Module
      id="testModuleDec2025Lalalallalala1"
      heightType="fixed"
      name="Test Module Dec 2025 LALALALLALALA"
      overflowType="hidden"
      pageUuid="cd26ba5e-d9fe-11f0-a8f6-ff1f4da45d57"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="db5fd"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="44bfd"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1b846"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          id="e5ae3c70"
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="c1c2e"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="phone"
        label="Phone"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="db5fd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
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
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
    </Table>
  </Frame>
</Screen>
