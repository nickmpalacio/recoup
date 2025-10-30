<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="1d593fad-abbb-4a32-bed0-e37abf2ec91c"
>
  <JavascriptQuery
    id="helloWorldy"
    notificationDuration={4.5}
    query={include("../lib/helloWorldy.js", "string")}
    resourceName="JavascriptQuery"
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
    <Text id="text1" value="Production hotfix!" verticalAlign="center" />
  </Frame>
</Screen>
