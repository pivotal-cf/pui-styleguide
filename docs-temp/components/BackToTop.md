---
title: Back to Top
menu: components
cssPath: pivotal-ui/css/back-to-top
reactPath: pivotal-ui/react/back-to-top
reactComponents:
  - BackToTop
---

# Overview

You can use this component to scroll to the top of a page.

The button will be fixed to the bottom right hand corner of the page.

You can place the link anywhere in your markup, but best practices are either towards the top or bottom of your markup.

# Examples

```jsx harmony
::title=Always visible example
<div>
<BackToTop alwaysVisible scrollableId="content" />
See the bottom right corner of your screen!
</div>
```

# Props

Property       | Required | Type   | Default | Description
---------------|----------|--------|---------|------------
`alwaysVisible`  | no       | Boolean | false   | If `alwaysVisible` is not set, the component will only appear after the window has been scrolled.
`scrollableId`   | no       | String  |         | If `scrollableId` is set, the component will update this element's scrollTop property. Otherwise, document.body will be scrolled.