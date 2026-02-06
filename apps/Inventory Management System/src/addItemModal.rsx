<ModalFrame
  id="addItemModal"
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
  size="medium"
>
  <Header>
    <Text id="addModalTitle" value="#### Add New Item" verticalAlign="center" />
  </Header>
  <Body>
    <TextInput
      id="newItemName"
      label="Item name"
      labelPosition="top"
      placeholder="Enter item name"
    />
    <Select
      id="newItemCategory"
      allowDeselect={true}
      data="{{ getCategoriesQuery.data.message }}"
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
    <NumberInput
      id="newItemQuantity"
      currency="USD"
      inputValue={0}
      label="Initial quantity"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="newItemReorderLevel"
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
    <Button id="cancelAddButton" styleVariant="outline" text="Cancel">
      <Event
        id="6057071c"
        event="click"
        method="run"
        params={{ map: { src: "addItemModal.hide()" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="confirmAddButton" text="Add">
      <Event
        id="84b5835e"
        event="click"
        method="run"
        params={{
          map: {
            src: "addItemQuery.trigger().then(() => {\n  getInventoryItems.trigger();\n  addItemModal.hide();\n});",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
