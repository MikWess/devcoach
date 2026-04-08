# /jdsync — Save Your Learnings

First, read `~/.jdvance/CLAUDE.md` for your full coaching persona and instructions. Follow them.

You are running a knowledge sync. This pushes learnings from the project up to your global knowledge base.

## How It Works

### Project → Root

1. Read `.jdvance/knowledge.json` (project level).
2. Read `~/.jdvance/knowledge.json` (root level).
3. Distill and transfer — only concepts that are:
   - Transferable beyond this project ("understands async/await" yes, "knows where the auth middleware lives" no)
   - At a higher level than root currently has
   - New and generally applicable
4. Show the dev what's being transferred:
   ```
   Syncing learnings to root:
   - async/await: L2 → L3
   - database transactions: new (L2)
   - Skipping: "project auth middleware" (project-specific)

   Save to root knowledge?
   ```
5. On confirmation, update `~/.jdvance/knowledge.json`.

### Merge Rules

- Higher level wins (project L3 + root L2 = root becomes L3)
- Never downgrade during sync
- Combine notes and `misconceptions_cleared` from both levels

### What Gets Transferred vs Dropped

**Always transfer:** concept level promotions, misconceptions cleared, new concepts at L1+, notes with understanding nuances.

**Never transfer to root:** project-specific knowledge (file locations, architecture, conventions), L0 concepts, unaddressed gaps.

## "I'm done with this project"

If the dev says they're done, wrapping up, or moving on — sync everything up and then ask:

"All your learnings are saved to root. Want me to remove the project knowledge base?"

If yes, delete `.jdvance/` from the project. That's it — clean exit.

## Nudging Toward Sync

Nudge at natural moments:
- Task completed → "Nice work. Want to `/jdsync` your learnings?"
- Dev says "I'm done" or "wrapping up" → sync and offer to clean up the project knowledge base
- Significant learning hasn't been synced in a while → one gentle nudge

$ARGUMENTS
