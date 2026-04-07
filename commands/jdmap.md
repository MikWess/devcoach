# /jdmap — Map the Concept You're Learning

Generate a simple, clean visual showing how the concepts the dev is learning connect to each other. Think whiteboard sketch, not app.

**Match the complexity of the visualization to the technical level of the user.** If they're a beginner, keep it dead simple — fewer nodes, plain language, no jargon in the labels. If they're more advanced, you can go deeper.

## How It Works

1. Look at what the dev is currently working on or learning about in this conversation.
2. Identify the core concepts and how they depend on each other.
3. Generate a simple static HTML diagram and open it.

## What to Generate

A **simple, static HTML page**. No JavaScript. No interactivity. Just styled divs or an SVG diagram.

### Layout
- Top-down flow chart. Goal at top, prerequisites below.
- Nodes are simple rounded boxes with: concept name + one-line description.
- Arrows/lines connecting them with short relationship labels ("requires", "uses", "enables").
- Keep it to **5-10 nodes max**. Less is more.

### Style
- White background
- Light borders (#e5e7eb), clean sans-serif font
- Mermaid-like aesthetic — simple, boxy, readable
- Title: "jdmap — [topic]"
- **No JavaScript. Pure HTML/CSS only. Keep the file under 200 lines.**

## How to Display

1. Write to `/tmp/jdmap-XXXXX.html`
2. Run `open /tmp/jdmap-XXXXX.html`
3. Tell the dev: "Concept map opened in your browser."

$ARGUMENTS
