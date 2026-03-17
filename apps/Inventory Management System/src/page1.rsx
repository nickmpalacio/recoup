<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="04ce288a-910b-48a9-899d-03b4b3448aa8"
>
  <RESTQuery
    id="getInventoryItems"
    _comment="Fetch inventory items with optional filters for search, category, and stock status."
    bodyFormData={null}
    bodyRaw={null}
    query="/inventory/items?search={{ searchInput.value }}&category={{ categoryFilter.value }}&stockStatus={{ stockStatusFilter.value }}"
    resourceDisplayName="inventory api"
    resourceName="0d7506b5-141f-4bb4-bde8-fa6f5bc10bbf"
  />
  <RESTQuery
    id="getCategoriesQuery"
    _comment="Fetch distinct inventory categories for filter dropdowns."
    bodyFormData={null}
    bodyRaw={null}
    query="/inventory/categories"
    resourceDisplayName="inventory api"
    resourceName="0d7506b5-141f-4bb4-bde8-fa6f5bc10bbf"
  />
  <RESTQuery
    id="addItemQuery"
    _comment="Add a new inventory item."
    body={
      '[{"key":"name","value":"{{ newItemName.value }}"},{"key":"category","value":"{{ newItemCategory.value }}"},{"key":"quantity","value":"{{ newItemQuantity.value }}"},{"key":"reorder_level","value":"{{ newItemReorderLevel.value }}"}]'
    }
    bodyFormData={null}
    bodyRaw={null}
    bodyType="json"
    query="/inventory/items"
    resourceDisplayName="inventory api"
    resourceName="0d7506b5-141f-4bb4-bde8-fa6f5bc10bbf"
    runWhenModelUpdates={false}
    type="POST"
  />
  <RESTQuery
    id="adjustStockQuery"
    _comment="Adjust stock quantity for an item by delta."
    body={'[{"key":"delta","value":"{{ stockAdjustmentInput.value }}"}]'}
    bodyFormData={null}
    bodyRaw={null}
    bodyType="json"
    query="/inventory/items/{{ inventoryTable.selectedSourceRow?.id }}/adjust"
    resourceDisplayName="inventory api"
    resourceName="0d7506b5-141f-4bb4-bde8-fa6f5bc10bbf"
    runWhenModelUpdates={false}
    type="PATCH"
  />
  <RESTQuery
    id="updateItemQuery"
    _comment="Update inventory item details."
    body={
      '[{"key":"name","value":"{{ editItemName.value }}"},{"key":"category","value":"{{ editItemCategory.value }}"},{"key":"quantity","value":"{{ editItemQuantity.value }}"},{"key":"reorder_level","value":"{{ editItemReorderLevel.value }}"}]'
    }
    bodyFormData={null}
    bodyRaw={null}
    bodyType="json"
    query="/inventory/items/{{ inventoryTable.selectedSourceRow?.id }}"
    resourceDisplayName="inventory api"
    resourceName="0d7506b5-141f-4bb4-bde8-fa6f5bc10bbf"
    runWhenModelUpdates={false}
    type="PUT"
  />
  <Include src="./addItemModal.rsx" />
  <Include src="./adjustStockModal.rsx" />
  <Include src="./editItemDrawer.rsx" />
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
      value="# Inventory Management System"
      verticalAlign="center"
    />
    <Button id="addItemButton" text="Add item">
      <Event
        id="0ef64534"
        event="click"
        method="run"
        params={{ map: { src: "addItemModal.show()" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="exportButton" styleVariant="outline" text="Export">
      <Event
        id="ccfbae02"
        event="click"
        method="run"
        params={{ map: { src: "inventoryTable.exportData();" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="filtersContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{ border: "surfacePrimaryBorder", borderRadius: "8px" }}
    >
      <View id="00030" viewKey="View 1">
        <TextInput
          id="searchInput"
          label="Search"
          labelPosition="top"
          placeholder="Search by name or ID"
        />
        <Select
          id="categoryFilter"
          allowDeselect={true}
          data="{{ getCategoriesQuery.data }}"
          emptyMessage="No options"
          label="Category"
          labelPosition="top"
          labels="{{ item }}"
          overlayMaxHeight={375}
          placeholder="Select a category"
          showClear={true}
          showSelectionIndicator={true}
          values="{{ item }}"
        >
          <Option id="00030" value="Option 1" />
          <Option id="00031" value="Option 2" />
          <Option id="00032" value="Option 3" />
        </Select>
        <Select
          id="stockStatusFilter"
          emptyMessage="No options"
          itemMode="static"
          label="Stock status"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="00030" value="Option 1" />
          <Option id="00031" value="Option 2" />
          <Option id="00032" value="Option 3" />
        </Select>
        <Button id="clearFiltersButton" styleVariant="outline" text="Clear">
          <Event
            id="64054ea7"
            event="click"
            method="run"
            params={{
              map: {
                src: "searchInput.clearValue(); categoryFilter.clearValue(); stockStatusFilter.clearValue();",
              },
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Container
      id="totalItemsCard"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{ border: "surfacePrimaryBorder", borderRadius: "8px" }}
    >
      <View id="00030" viewKey="View 1">
        <Statistic
          id="totalItemsKpi"
          currency="USD"
          decimalPlaces={0}
          label="Total items"
          labelCaption="Current inventory items"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryDecimalPlaces={0}
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondaryValue=""
          showSeparators={true}
          suffix=" items"
          value="{{ Array.isArray(getInventoryItems.data) ? getInventoryItems.data.length : 0 }}"
        />
        <Icon
          id="totalItemsIcon"
          horizontalAlign="right"
          icon="line/shipping-box-1"
          style={{ map: { color: "Primary" } }}
          styleVariant="background"
        />
      </View>
    </Container>
    <Container
      id="lowStockCard"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{ border: "surfacePrimaryBorder", borderRadius: "8px" }}
    >
      <View id="00030" viewKey="View 1">
        <Statistic
          id="lowStockKpi"
          currency="USD"
          decimalPlaces={0}
          label="Low stock items"
          labelCaption="Currently low on stock"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryDecimalPlaces={0}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondaryValue="{{ Array.isArray(getInventoryItems.data) && getInventoryItems.data.length > 0 ? getInventoryItems.data.filter(item => (item.quantity ?? 0) > 0 && (item.quantity ?? 0) <= (item.reorderLevel ?? 0)).length / getInventoryItems.data.length : 0 }}"
          showSeparators={true}
          suffix=" items"
          value="{{ Array.isArray(getInventoryItems.data) ? getInventoryItems.data.filter(item => (item.quantity ?? 0) > 0 && (item.quantity ?? 0) <= (item.reorderLevel ?? 0)).length : 0 }}"
        />
        <Icon
          id="lowStockIcon"
          horizontalAlign="right"
          icon="line/interface-alert-warning-circle"
          style={{ map: { color: "Secondary" } }}
          styleVariant="background"
        />
      </View>
    </Container>
    <Container
      id="outOfStockCard"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{ border: "surfacePrimaryBorder", borderRadius: "8px" }}
    >
      <View id="00030" viewKey="View 1">
        <Statistic
          id="outOfStockKpi"
          currency="USD"
          decimalPlaces={0}
          label="Out of stock"
          labelCaption="Current out-of-stock SKUs"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryDecimalPlaces={1}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondaryValue="{{ Array.isArray(getInventoryItems.data) && getInventoryItems.data.length > 0 ? getInventoryItems.data.filter(item => (item.quantity ?? 0) === 0).length / getInventoryItems.data.length : 0 }}"
          showSeparators={true}
          suffix=" items"
          value="{{ Array.isArray(getInventoryItems.data) ? getInventoryItems.data.filter(item => (item.quantity ?? 0) === 0).length : 0 }}"
        />
        <Icon
          id="outOfStockIcon"
          horizontalAlign="right"
          icon="line/interface-alert-alarm-bell-1"
          style={{ map: { color: "Tertiary" } }}
          styleVariant="background"
        />
      </View>
    </Container>
    <Container
      id="tableSectionContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{ border: "surfacePrimaryBorder", borderRadius: "8px" }}
    >
      <View id="00030" viewKey="View 1">
        <Text
          id="tableHeader"
          value="#### Inventory Items"
          verticalAlign="center"
        />
        <Table
          id="inventoryTable"
          actionsOverflowPosition={2}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getInventoryItems.data.data }}"
          defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="795d2"
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{ rowSeparator: "rgb(226, 232, 240)" }}
          toolbarPosition="bottom"
        >
          <Column
            id="795d2"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: false }}
            groupAggregationMode="none"
            key="id"
            label="Item ID"
            position="center"
            referenceId="itemId"
            size={80}
            summaryAggregationMode="none"
          />
          <Column
            id="5c496"
            alignment="left"
            editableOptions={{ spellCheck: false }}
            format="string"
            groupAggregationMode="none"
            key="name"
            label="Name"
            position="center"
            referenceId="name"
            size={220}
            summaryAggregationMode="none"
          />
          <Column
            id="8b24d"
            alignment="left"
            editableOptions={{ spellCheck: false }}
            format="string"
            groupAggregationMode="none"
            key="category"
            label="Category"
            position="center"
            referenceId="category"
            size={160}
            summaryAggregationMode="none"
          />
          <Column
            id="cce27"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true }}
            groupAggregationMode="none"
            key="quantity"
            label="Quantity"
            position="center"
            referenceId="quantity"
            size={110}
            summaryAggregationMode="none"
          />
          <Column
            id="e551e"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true }}
            groupAggregationMode="none"
            key="reorderLevel"
            label="Reorder level"
            position="center"
            referenceId="reorderLevel"
            size={140}
            summaryAggregationMode="none"
          />
          <Action
            id="15361"
            icon="line/interface-setting-slider-horizontal"
            label="Adjust"
          >
            <Event
              id="88142b00"
              event="clickAction"
              method="run"
              params={{ map: { src: "adjustStockModal.show()" } }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Action id="840e2" icon="line/interface-edit-write-1" label="Edit">
            <Event
              id="ae9d0ce8"
              event="clickAction"
              method="run"
              params={{ map: { src: "editItemDrawer.show();" } }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
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
              id="e3fff51c"
              event="clickToolbar"
              method="exportData"
              pluginId="inventoryTable"
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
              id="a3f89554"
              event="clickToolbar"
              method="refresh"
              pluginId="inventoryTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <FileInput
      id="fileInput1"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      labelPosition="top"
      maxCount={20}
      maxSize="250mb"
      placeholder="No file selected"
      textBefore="Browse"
    />
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.metadata.id}}!**"
      verticalAlign="center"
    />
    <Text id="text2" value="Commit Signing Test!" verticalAlign="center" />
  </Frame>
</Screen>
