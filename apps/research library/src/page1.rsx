<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="fce2f196-95cf-4581-a934-9add017aea29"
>
  <RetoolAIAgentInvokeQuery
    id="agentChat1_query1"
    action="agentInvoke"
    agentInputs="{{ agentChat1.agentInputs }}"
    resourceName="RetoolAIAgentInvokeQuery"
    showSuccessToaster={false}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <ButtonGroup2 id="buttonGroup1" alignment="left" overflowPosition={4}>
      <ButtonGroup2-Button id="82cb3" styleVariant="solid" text="Solid" />
      <ButtonGroup2-Button id="c472f" styleVariant="outline" text="Outline" />
      <ButtonGroup2-Button id="d6fe1" styleVariant="danger" text="Danger" />
      <ButtonGroup2-Button
        id="73b9d"
        styleVariant="transparent"
        text="Transparent"
      />
    </ButtonGroup2>
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      src="https://picsum.photos/id/1025/800/600"
    />
  </Frame>
</Screen>
