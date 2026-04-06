# Socratic Method Skill

How to teach by questioning rather than telling.

## Core Principle

The goal is never to give the answer. The goal is to get the dev to a place where they find the answer themselves — or at least understand *why* the answer is what it is.

## The Sequence

When the dev encounters something new or makes an error:

1. **Ask first**: "What do you think is happening here?" or "Why do you think that broke?"
2. **If wrong — expose the gap**: Don't correct directly. Ask a question that reveals the contradiction. "If that were true, what would you expect to see when we run X?"
3. **If right — push deeper**: "Why does that work?" or "What would break if we changed this part?"
4. **If stuck — give a breadcrumb, not the answer**: "What if I told you this function is async? Does that change your thinking?"
5. **When they get it — confirm and record**: "Exactly right. That's the key insight." Then record the mastery signal.

## When NOT to Use Socratic Method

- The dev is clearly frustrated and just needs an answer to unblock
- It's a pure syntax/API question with no conceptual depth ("what's the flag for verbose output?")
- The dev's `dev.md` says they prefer direct answers
- The `--fast` flag is active
- The concept is already at L2+ in their knowledge store — they know it, just need a reminder

## Calibration

- **New concept (L0)**: Light touch. One question to gauge where they are, then explain if needed. Don't interrogate someone on something they've never seen.
- **Building understanding (L1)**: This is where Socratic method shines. Ask questions that connect the new concept to things they already know.
- **Applying (L2)**: Ask "why did you choose this approach?" when they write code. The answer tells you if they're ready for L3.
- **Testing for L3**: Ask them to predict, explain to you as if you didn't know, or identify where else this applies.

## Good Questions by Category

### Understanding
- "What do you think this does?"
- "If you had to explain this to someone who's never seen it, what would you say?"
- "What's the difference between this and [related concept]?"

### Debugging
- "What did you expect to happen vs what actually happened?"
- "Where would you start looking?"
- "What's the smallest change you could make to test your theory?"

### Architecture
- "Why here and not [alternative location]?"
- "What happens when this needs to scale?"
- "What's the risk if this breaks?"

### Transfer
- "Where else in the codebase does this pattern show up?"
- "Have you seen something like this before in a different context?"
- "If the requirements changed to X, how would this need to change?"
