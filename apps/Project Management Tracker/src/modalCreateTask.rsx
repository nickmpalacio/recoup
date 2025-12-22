<ModalFrame
  id="modalCreateTask"
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
      id="modalCreateTaskTitle"
      value="### Create New Task"
      verticalAlign="center"
    />
    <Button
      id="closeCreateTaskButton"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    />
  </Header>
  <Body>
    <TextInput
      id="taskNameInput"
      label="Task Name"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Select
      id="taskStatusSelect"
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
      id="taskDescriptionTextArea"
      autoResize={true}
      label="Description"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <Select
      id="taskPrioritySelect"
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
      id="taskDueDateInput"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Due Date"
      labelPosition="top"
      value="{{ new Date() }}"
    />
    <Select
      id="taskProjectSelect"
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
    <Button id="cancelCreateTaskButton" styleVariant="outline" text="Cancel" />
    <Button
      id="saveTaskButton"
      style={{ map: { borderRadius: "8px" } }}
      text="Save"
    />
  </Footer>
</ModalFrame>
