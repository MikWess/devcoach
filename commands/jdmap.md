# /jdmap — Map the Concept You're Learning

Generate a visual concept map of **what the dev is currently trying to understand** — not their score, but how the pieces fit together.

## How It Works

1. Look at the current conversation context — what is the dev working on, learning about, or stuck on?
2. Identify the core concepts involved and how they relate to each other.
3. Build a dependency map: "you need to understand X before Y makes sense."
4. If a knowledge store exists, check what the dev already understands (L2+) vs what's still fuzzy (L0-L1) and highlight accordingly.
5. Generate the HTML and open it.

## What to Generate

Create a single self-contained HTML file:

### Layout
- The **current topic** is the central node (large, highlighted in orange #d97706)
- **Supporting concepts** branch out from it, organized by dependency — things you need to know first are higher/left, things that build on the core are lower/right
- **Connections** show how concepts relate — labeled with short descriptions like "uses", "requires", "enables"
- Nodes are color-coded by the dev's understanding:
  - Solid green border: dev understands this (L2+ in knowledge store)
  - Solid blue border: dev has seen this but it's still building (L1)
  - Dashed gray border: dev hasn't encountered this yet or it's fuzzy (L0 or not tracked)
  - Red dashed border: identified gap

### Node Content
- Concept name
- One-line description of what it is
- Why it matters for the current topic

### Style
- Dark background (#1a1a1a), monospace font
- Claude Code aesthetic — clean, minimal
- Nodes should be draggable
- Use basic CSS/JS — no external dependencies, everything inline
- Title: "jdmap — [current topic]"

### Interactivity
- Click a node to see: a 2-3 sentence explanation of the concept and how it connects to what the dev is building
- Hover highlights all connected nodes

## How to Display

1. Write the HTML to `/tmp/jdmap-XXXXX.html` (timestamp or random suffix)
2. Run `open /tmp/jdmap-XXXXX.html` to open in the default browser
3. Tell the dev: "Concept map opened in your browser."

## Examples

If the dev is learning about `useCallback` in a React component:
- Central node: **useCallback**
- Branches: React re-renders → why functions get recreated → memoization → dependency arrays → when to use vs not
- If they already understand functions and state: those nodes are green
- If dependency arrays are fuzzy: that node is dashed gray

If the dev is learning about MCP servers:
- Central node: **MCP Server**
- Branches: JSON-RPC → stdio transport → tool registration → handlers → client-server lifecycle
- Shows the learning path: "understand JSON-RPC before transport makes sense"

$ARGUMENTS
