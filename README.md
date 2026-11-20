# sprite-profile-template

A starting point for a [sprite-profiles](https://github.com/antialias/sprite-profiles)
profile: one folder that gives a [Fly.io Sprite](https://docs.sprites.dev) one thing. Press
"Use this template", rename three things, tag a version, and anyone can pick it as
`@you/NAME`.

## Rename

Pick a NAME: 2-31 characters of `a-z`, `0-9` and `-`, starting with a letter.

1. **The repository:** `sprite-profile-NAME`. The name is how `@you/NAME` finds it.
2. **`name` in `profile.toml`:** `NAME`. The workflow fails until it matches the repository.
3. **The skill folder,** `claude/skills/hello/`, and the `name` in its `SKILL.md`, to what the
   skill is about. Or delete `claude/` if the profile brings no skill.

Then write the `summary` (one line, at most 80 characters), the `description` (what it gives
a Sprite and what it costs), and the network rules for every domain it reaches.

## What is in it

- `profile.toml`: the profile. Every field is in the
  [spec](https://github.com/antialias/sprite-profiles/blob/main/docs/SPEC.md); a field it
  doesn't define is refused, so a typo can't silently do nothing.
- `setup.sh`: optional. It runs in the Sprite as user `sprite`, in a plain shell, and must be
  safe to run twice. Delete it if the profile installs nothing.
- `claude/skills/hello/SKILL.md`: an example Claude Code skill. Picked as `@you/NAME`, it lands
  at `~/.claude/skills/you.NAME--hello/` in the Sprite.
- `.github/workflows/check.yml`: on every push, downloads the latest sprite-profiles and
  checks that the name matches the repository and that the profile resolves and plans beside
  `claude-code`. It needs no Fly token and creates nothing.

Keep tokens out. A company's API token goes in a connector, which the Sprites gateway fills
in, so the Sprite never holds it:
[Inputs and a company's API](https://github.com/antialias/sprite-profiles/blob/main/docs/INPUTS.md).

## Try it

```sh
sprite-profiles show ./
sprite-profiles plan claude-code ./
sprite-profiles launch claude-code ./ --name demo-1
```

## Publish

Tag a version and give the repository the topic `sprite-profile`, so
`sprite-profiles search` finds it:

```sh
git tag -a v1.0.0 -m "NAME 1.0.0" && git push origin v1.0.0
gh repo edit --add-topic sprite-profile
```

`@you/NAME` is now the newest version, and `@you/NAME@1` the newest 1.x. Then
[add it to the gallery](https://github.com/antialias/sprite-profiles/issues/new?template=add-profile.yml).
[Publishing a profile](https://github.com/antialias/sprite-profiles/blob/main/docs/PUBLISHING.md)
covers the rest.

## License

Apache-2.0. See [LICENSE](LICENSE).
