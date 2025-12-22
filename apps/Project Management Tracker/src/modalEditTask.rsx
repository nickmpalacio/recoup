<ModalFrame
  id="modalEditTask"
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
      id="modalEditTaskTitle"
      value="### Edit Task"
      verticalAlign="center"
    />
    <Button
      id="closeEditTaskButton"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    />
  </Header>
  <Body>
    <TextInput
      id="editTaskNameInput"
      label="Task Name"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Select
      id="editTaskStatusSelect"
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
      id="editTaskDescriptionTextArea"
      autoResize={true}
      label="Description"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <Select
      id="editTaskPrioritySelect"
      emptyMessage="No options"
      itemMode="static"
      label="Priority"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
    <Date
      id="editTaskDueDateInput"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Due Date"
      labelPosition="top"
      value="{{ new Date() }}"
    />
    <Select
      id="editTaskProjectSelect"
      emptyMessage="No options"
      itemMode="static"
      label="Assigned Project"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
  </Body>
  <Footer>
    <Button id="cancelEditTaskButton" styleVariant="outline" text="Cancel" />
    <Button
      id="updateTaskButton"
      style={{ map: { borderRadius: "8px" } }}
      text="Update"
    />
  </Footer>
</ModalFrame>
