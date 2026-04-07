# /jdmap — Map the Concept You're Learning

Generate a visual concept map of **what the dev is currently trying to understand** — not their score, but how the pieces fit together and what they need to learn next.

## How It Works

1. Look at the current conversation context — what is the dev working on, learning about, or stuck on?
2. Identify the core concepts involved and how they relate to each other.
3. Build a dependency map: "you need to understand X before Y makes sense."
4. If a knowledge store exists, check what the dev already understands (L2+) vs what's still fuzzy (L0-L1) and highlight accordingly.
5. Organize the map from **where the dev is now** (bottom) flowing **up** to where they need to get (top). Learning flows upward.
6. Generate the HTML and open it.

## What to Generate

Create a single self-contained HTML file. Think **Mermaid diagram aesthetic** — clean, white, minimal, readable.

### Layout
- **Top-down flow**: the goal/topic is at the top, prerequisites flow downward. The dev reads bottom-to-top as a learning path.
- The **current topic** is the top node (highlighted with a soft blue background)
- **Prerequisite concepts** branch downward — things you need to understand first
- **Connections** are labeled arrows showing relationships: "requires", "uses", "enables", "builds on"
- Tree-like structure, not a messy web. Keep it organized.

### Node Content
- Concept name (bold)
- One-line description
- Small badge showing the dev's level if tracked (L0/L1/L2/L3)

### Node Styling by Understanding
- **Solid fill, green left border**: dev understands this (L2+ in knowledge store)
- **Solid fill, blue left border**: dev has seen this, still building (L1)
- **Light gray fill, dashed border**: dev hasn't encountered this yet (L0 or not tracked)
- **Light red fill, red left border**: identified gap

### Style
- **White/light background** (#ffffff or #fafafa)
- Light gray lines and borders (#e5e7eb)
- Clean sans-serif font (system font stack)
- Mermaid-like: boxy nodes, rounded corners, labeled arrows
- Generous whitespace, nothing cramped
- Title at top: "jdmap — [current topic]"
- Subtitle: "learning path — read bottom to top"
- No external dependencies, everything inline CSS/JS

### Interactivity
- Click a node to expand: 2-3 sentence explanation + how it connects to the main topic
- Hover highlights the node and its direct connections
- Nodes are draggable for rearranging

## How to Display

1. Write the HTML to `/tmp/jdmap-XXXXX.html` (timestamp or random suffix)
2. Run `open /tmp/jdmap-XXXXX.html` to open in the default browser
3. Tell the dev: "Concept map opened in your browser."

## Examples

If the dev is learning about `useCallback` in a React component:
```
                    ┌─────────────────┐
                    │   useCallback   │  ← goal: understand this
                    └────────┬────────┘
                             │ requires
                    ┌────────┴────────┐
                    │  memoization    │
                    └────────┬────────┘
                             │ requires
              ┌──────────────┼──────────────┐
     ┌────────┴────────┐           ┌────────┴────────┐
     │  re-renders     │           │ dependency arrays│
     └────────┬────────┘           └─────────────────┘
              │ requires
     ┌────────┴────────┐
     │  React state    │  ← dev already gets this (green)
     └─────────────────┘
```

$ARGUMENTS
