# Omarchy theme for Obsidian

An override for Omarchy's built-in Obsidian template. Every time the Omarchy
theme changes, Omarchy renders `obsidian.css.tpl` with the new theme's
`colors.toml` and copies the result into every vault as the `Omarchy` theme.

Instead of patching individual selectors, the template sets the base palette
that Obsidian 1.x derives its UI from (`--color-base-*`, `--color-<name>`,
`--color-accent*`), plus headings, code, tags and links. Everything follows the
Omarchy theme, whether Obsidian itself is in light or dark mode.

## Install

```bash
ln -sf "$PWD/obsidian.css.tpl" ~/.config/omarchy/themed/obsidian.css.tpl
omarchy theme set "$(omarchy theme current)"   # re-render now
```

In Obsidian: Settings → Appearance → Themes → **Omarchy**.

`manifest.json` is only written by Omarchy when it's missing, so copy this one
into `<vault>/.obsidian/themes/Omarchy/` to replace the stock one.

## Template tokens

`{{ name }}`, `{{ name_rgb }}` and `{{ mix a b N% }}`, where the names are keys
from `omarchy-theme-color --all` (e.g. `background`, `foreground`, `accent`,
`cyan`).
