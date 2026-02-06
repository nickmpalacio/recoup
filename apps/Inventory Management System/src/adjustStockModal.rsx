<ModalFrame
  id="adjustStockModal"
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
    <Text
      id="adjustModalTitle"
      value="#### Adjust Stock Level"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <Text
      id="currentItemName"
      value="**Item:** {{ inventoryTable.selectedSourceRow?.name || '—' }}"
      verticalAlign="center"
    />
    <Text
      id="currentStockText"
      value="**Current stock:** {{ inventoryTable.selectedSourceRow?.quantity ?? '—' }}"
      verticalAlign="center"
    />
    <NumberInput
      id="stockAdjustmentInput"
      currency="USD"
      inputValue={0}
      label="Adjustment amount (use negative to reduce)"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Text
      id="newStockPreview"
      value="{{ (() => { const row = inventoryTable.selectedSourceRow; const delta = Number(stockAdjustmentInput.value || 0); const current = Number(row?.quantity ?? 0); const preview = Math.max(0, current + delta); return `**New stock level:** ${preview}`; })() }}"
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <Button id="cancelAdjustButton" styleVariant="outline" text="Cancel">
      <Event
        id="e226b71d"
        event="click"
        method="run"
        params={{ map: { src: "adjustStockModal.hide();" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="confirmAdjustButton" text="Confirm">
      <Event
        id="1a709884"
        event="click"
        method="run"
        params={{
          map: {
            src: "adjustStockQuery.trigger().then(() => {\n  getInventoryItems.trigger();\n  adjustStockModal.hide();\n});",
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
