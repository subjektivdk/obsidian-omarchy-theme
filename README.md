# Omarchy theme for Obsidian

An override for Omarchy's built-in Obsidian template. Every time the Omarchy
theme changes, Omarchy renders `obsidian.css.tpl` with the new theme's
`colors.toml` and copies the result into every vault as the `Omarchy` theme.

Instead of patching individual selectors, the template sets the base palette
that Obsidian 1.x derives its UI from (`--color-base-*`, `--color-<name>`,
`--color-accent*`), plus headings, code, tags and links. Everything follows the
Omarchy theme, whether Obsidian itself is in light or dark mode.

## Install

Run from the repo root:

```bash
ln -sf "$PWD/obsidian.css.tpl" ~/.config/omarchy/themed/obsidian.css.tpl
omarchy theme set <theme-name>   # re-apply current theme to re-render now
```

In Obsidian: Settings → Appearance → Themes → **Omarchy**.

`manifest.json` is only written by Omarchy when it's missing, so copy this one
into `<vault>/.obsidian/themes/Omarchy/` to replace the stock one.

## Font

Omarchy templates only know colors, so the font is synced by a `font-set` hook.
It writes the CSS snippet `omarchy-font` into every vault whenever you run
`omarchy font set`.

Run from the repo root:

```bash
mkdir -p ~/.config/omarchy/hooks/font-set.d
ln -sf "$PWD/hooks/font-set/obsidian-font" ~/.config/omarchy/hooks/font-set.d/obsidian-font
omarchy hook font-set "$(omarchy font current)"   # write the snippet now
```

Vaults are found through Obsidian's vault registry (native, Flatpak and Snap
installs). To uninstall, remove the symlink and delete
`<vault>/.obsidian/snippets/omarchy-font.css` from each vault.

Then enable it once in Obsidian: Settings → Appearance → CSS snippets →
**omarchy-font**. The snippet wins over the fonts picked in Appearance, and it
sets interface, text and monospace to the Omarchy font. Turn it off to use your
own fonts again.

## Template tokens

`{{ name }}`, `{{ name_rgb }}` and `{{ mix a b N% }}`, where the names are keys
from `omarchy-theme-color --all` (e.g. `background`, `foreground`, `accent`,
`cyan`).
