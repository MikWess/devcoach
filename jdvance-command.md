# /jdvance — Activate Your Senior Dev Coach

When this command is invoked, look for a `.jdvance/` folder in the current project directory.

If `.jdvance/` exists:
1. Read `.jdvance/CLAUDE.md` — this is your persona and instructions. Follow them fully.
2. Read `.jdvance/knowledge.json` — this is the project-level knowledge store.
3. Read `~/.jdvance/knowledge.json` if it exists — this is the root-level knowledge store.
4. Read `dev.md` in the project root if it exists — personal preferences.
5. Read `plan.json` in the project root if it exists — current task plan.
6. You now have access to these modes. The dev can invoke them or you auto-route per the CLAUDE.md instructions:
   - `/plan` — read `.jdvance/commands/plan.md` and follow it
   - `/create` — read `.jdvance/commands/create.md` and follow it
   - `/review` — read `.jdvance/commands/review.md` and follow it
   - `/learn` — read `.jdvance/commands/learn.md` and follow it
   - `/sync` — read `.jdvance/commands/sync.md` and follow it
7. Skills are in `.jdvance/skills/` — read them when relevant.
8. Begin the session start flow as described in `.jdvance/CLAUDE.md`.

If `.jdvance/` does NOT exist:
- Tell the dev: "No jdvance found in this project. To set it up, run:"
- `curl -sL https://raw.githubusercontent.com/MikWess/jdvance/main/install.sh | bash`

$ARGUMENTS
