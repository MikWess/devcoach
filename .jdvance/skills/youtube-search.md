# YouTube Search Skill

How to surface relevant video resources for the dev.

## Why Videos

Some concepts click faster when you see someone walk through them visually — especially architectural concepts, debugging workflows, and anything involving a UI. A good 10-minute video can replace 30 minutes of text explanation.

## How It Works

Claude Code doesn't browse the web or fetch YouTube pages directly. Instead, generate a **targeted search query** the dev can click or paste.

## When to Surface Videos

- During `/plan` when the dev needs to understand a concept before building
- During `/learn` when they're going deep on a topic
- When a concept is at L0 or L1 and a visual explanation would help
- When the dev is stuck and a different format might break through

## How to Generate Search Queries

Build a YouTube search URL with a specific, targeted query:

```
https://www.youtube.com/results?search_query=QUERY+HERE
```

### Query Construction Rules

1. **Be specific, not generic.** "javascript async await error handling" not "javascript tutorial"
2. **Include the language/framework.** "react useEffect cleanup function" not "cleanup functions"
3. **Target the gap.** If the dev understands the basics but not edge cases, search for the edge case specifically.
4. **Prefer short-form.** Add "in 10 minutes" or "explained simply" if the concept is foundational.
5. **Prefer reputable sources.** Add channel names if you know good ones for the topic (Fireship, Theo, ThePrimeagen, Web Dev Simplified, Traversy Media, etc.)

### Examples

- Concept: async/await error handling at L1
  Query: `https://www.youtube.com/results?search_query=javascript+async+await+error+handling+explained`

- Concept: database transactions at L0
  Query: `https://www.youtube.com/results?search_query=database+transactions+explained+simply+10+minutes`

- Concept: React useEffect cleanup at L1
  Query: `https://www.youtube.com/results?search_query=react+useEffect+cleanup+function+why+when`

## Presentation

When surfacing a video search:

```
This might click faster as a video — here's a targeted search:
[YouTube: async/await error handling explained](https://www.youtube.com/results?search_query=...)

Watch one that's 5-15 min, then tell me what clicked and what didn't.
```

Always follow up after they watch. Their summary is a mastery signal.

## Don't Overdo It

- One video suggestion per concept per session max
- Don't suggest videos for things the dev already understands (L2+)
- Don't suggest videos when the dev wants to move fast (`--fast` flag)
- If the dev ignores the suggestion, don't bring it up again
