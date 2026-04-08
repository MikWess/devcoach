# J.D. VANCE

A senior dev in your terminal. Claude Code skills that coach junior devs through planning, building, reviewing, and learning — backed by a two-tier knowledge system that tracks what you understand and grows with you across projects.

## What is this?

jdvance is a set of Claude Code skills that turn your terminal into a pair programming session with a patient, demanding senior developer. It doesn't write code for you — it makes sure you understand everything you're building, flags risks you haven't thought about, and grows with you over time.

## Modes

### plan — Before you build
Understand the problem before writing code. The coach assesses what you know, fills gaps, and builds the plan with you.

### create — While you build
Pair programming. The coach watches what you write, asks why you made the choices you did, and only interrupts when something is genuinely risky.

### review — Before you push
Three checks: **risk** (security, data integrity, architecture), **knowledge** (can you explain what you wrote?), and **metacognition** (do you know what you don't know?).

### learn — Anytime
Open-ended learning. Ask about a concept, and the coach builds understanding layer by layer. Surfaces YouTube videos and codebase examples where helpful.

### sync — When you're done
Transfers your learnings up to root. Optionally removes all jdvance files from the project.

## Two-Tier Knowledge System

Knowledge lives at two levels, and insights flow upward:

```
~/.jdvance/knowledge.json         ← ROOT: follows you across all projects
project/.jdvance/knowledge.json   ← PROJECT: specific to this codebase
```

**Project level** (`.jdvance/knowledge.json`) — tracks your understanding within this project. Updated automatically during sessions.

**Root level** (`~/.jdvance/knowledge.json`) — your global brain. Persists across all projects. Only updated via `/sync` when you finish a project.

When you `/sync`, learnings transfer up from project to root. When you start a new project, the coach reads your root knowledge and already knows you.

### Mastery Levels

| Level | Name | Meaning |
|-------|------|---------|
| L0 | Encountered | Came up in conversation or code |
| L1 | Exposed | You engaged with it — asked questions, restated it |
| L2 | Applied | You reached for it correctly on your own |
| L3 | Internalized | You can explain it, predict failures, transfer it to new contexts |

## Setup

One command from inside any project:

```bash
curl -sL https://raw.githubusercontent.com/MikWess/jdvance/main/install.sh | bash
```

That's it. It installs the coach persona to `~/.jdvance/` and slash commands to `~/.claude/commands/`. Then:

```bash
claude
/jdvance
```

Type `/jdvance` in any Claude Code session to activate the coach. Then use `/jdplan`, `/jdcreate`, `/jdreview`, `/jdlearn`, or `/jdsync` — or just talk naturally and the coach auto-detects the right mode.

## Customization

Session-level flags work on any command:
- `--fast` — skip deep-dives, get to the point
- `--strict` — hold me to a higher standard
- `--deep` — take your time, go thorough
- `--quiet` — minimal interruption

Everything is editable. The files in `.jdvance/commands/` and `.jdvance/skills/` are plain markdown — change anything that doesn't work for you.

## File Structure

```
~/.claude/commands/
  jdvance.md               ← global /jdvance command (installed once)
  jdplan.md                ← /jdplan mode
  jdcreate.md              ← /jdcreate mode
  jdreview.md              ← /jdreview mode
  jdlearn.md               ← /jdlearn mode
  jdsync.md                ← /jdsync — save learnings
  jdmap.md                 ← /jdmap — concept visualization

~/.jdvance/                ← root-level (global)
  CLAUDE.md                ← coach persona
  knowledge.json           ← root knowledge store
  skills/
    knowledge-update.md
    socratic-method.md

project/
  .jdvance/
    knowledge.json         ← project-level knowledge (created on first session)
```

## Uninstall

From inside a project:
- `/jdsync` to save your learnings, then remove `.jdvance/` from the project
- Or manually: `rm -rf .jdvance`

To remove globally: `rm -rf ~/.jdvance ~/.claude/commands/jd*.md`

## Philosophy

You are always in control. The AI doesn't decide what you build, when you push, or what you learn next — you do. It coaches, it questions, it flags risks, but every decision is yours.

The knowledge store isn't a hidden score. It's yours to read, edit, and watch grow. When you see a concept move from L0 to L3, that's not a metric — that's a real change in what you can do without help.

The goal is that a junior dev who uses this for six months needs it less, not more. Every interaction builds genuine understanding — not dependency on an AI that writes code for you.

## License

MIT
