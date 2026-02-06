<DrawerFrame
  id="editItemDrawer"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  width="large"
>
  <Header>
    <Text
      id="editDrawerTitle"
      value="#### Edit Item Details"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <TextInput
      id="editItemName"
      label="Item name"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ inventoryTable.selectedSourceRow?.name || '' }}"
    />
    <Select
      id="editItemCategory"
      data="{{ getCategoriesQuery.data.message }}"
      emptyMessage="No categories found"
      label="Category"
      labelPosition="top"
      labels="{{ item }}"
      overlayMaxHeight={375}
      placeholder="Select a category"
      showClear={true}
      showSelectionIndicator={true}
      value="{{ inventoryTable.selectedSourceRow?.category || '' }}"
      values="{{ item }}"
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
    <NumberInput
      id="editItemQuantity"
      currency="USD"
      inputValue={0}
      label="Quantity in stock"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="editItemReorderLevel"
      currency="USD"
      inputValue={0}
      label="Reorder level"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
  </Body>
  <Footer>
    <Button id="cancelEditButton" styleVariant="outline" text="Cancel">
      <Event
        id="5674c5bd"
        event="click"
        method="run"
        params={{ map: { src: "editItemDrawer.hide();" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="saveEditButton" text="Save">
      <Event
        id="067c9b41"
        event="click"
        method="run"
        params={{
          map: {
            src: "updateItemQuery.trigger().then(() => {\n  getInventoryItems.trigger();\n  editItemDrawer.hide();\n});",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</DrawerFrame>
