---
name: hello
description: An example skill. Replace it with what Claude Code in the Sprite should know about this profile's tool or service, and when to use it.
---

# Using this profile's tool

Write what an agent in the Sprite needs: which commands or MCP tools to use, what they may
and may not do, and what to do when something is refused. The launch puts this folder at
`~/.claude/skills/<profile>--hello/`, or `<owner>.<profile>--hello/` when picked by name.

- Never ask for a token, create one or write one down. Credentials reach the Sprite through
  a connector, which the Sprites gateway fills in.
