<ModalFrame
  id="modalEditProject"
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
      id="modalEditProjectTitle"
      value="### Edit Project"
      verticalAlign="center"
    />
    <Button
      id="closeEditProjectButton"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    />
  </Header>
  <Body>
    <TextInput
      id="editProjectNameInput"
      label="Project Name"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Select
      id="editProjectStatusSelect"
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
    <TextArea
      id="editProjectDescriptionTextArea"
      autoResize={true}
      label="Description"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <Date
      id="editProjectStartDateInput"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Start Date"
      labelPosition="top"
      value="{{ new Date() }}"
    />
    <Date
      id="editProjectEndDateInput"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="End Date"
      labelPosition="top"
      value="{{ new Date() }}"
    />
  </Body>
  <Footer>
    <Button id="cancelEditProjectButton" styleVariant="outline" text="Cancel" />
    <Button
      id="updateProjectButton"
      style={{ map: { borderRadius: "8px" } }}
      text="Update"
    />
  </Footer>
</ModalFrame>
