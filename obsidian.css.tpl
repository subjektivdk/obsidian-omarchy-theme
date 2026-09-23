/* Omarchy Theme for Obsidian
 *
 * Generated from ~/.config/omarchy/themed/obsidian.css.tpl on every Omarchy
 * theme switch. Obsidian 1.x derives almost every UI color from the base
 * palette below (--color-base-*, --mono-*, --color-<name>, --color-accent*),
 * so setting it from the Omarchy theme keeps the whole UI in sync, regardless
 * of whether Obsidian itself is in light or dark mode.
 */

.theme-dark, .theme-light {
  color-scheme: {{ mode }};
  --highlight-mix-blend-mode: normal;

  /* Base palette: background -> foreground ramp, mirroring Obsidian's steps */
  --mono-0: {{ darker_background }};
  --mono-100: {{ bright_foreground }};
  --color-base-00: {{ background }};
  --color-base-05: {{ mix background foreground 2% }};
  --color-base-10: {{ mix background foreground 4% }};
  --color-base-20: {{ mix background foreground 6% }};
  --color-base-25: {{ mix background foreground 9% }};
  --color-base-30: {{ mix background foreground 12% }};
  --color-base-35: {{ mix background foreground 18% }};
  --color-base-40: {{ mix background foreground 30% }};
  --color-base-50: {{ mix background foreground 45% }};
  --color-base-60: {{ mix background foreground 65% }};
  --color-base-70: {{ mix background foreground 80% }};
  --color-base-100: {{ foreground }};

  /* Named colors (callouts, graph, canvas, etc.) */
  --color-red: {{ red }};
  --color-orange: {{ orange }};
  --color-yellow: {{ yellow }};
  --color-green: {{ green }};
  --color-cyan: {{ cyan }};
  --color-blue: {{ blue }};
  --color-purple: {{ magenta }};
  --color-pink: {{ bright_magenta }};
  --color-red-rgb: {{ red_rgb }};
  --color-orange-rgb: {{ orange_rgb }};
  --color-yellow-rgb: {{ yellow_rgb }};
  --color-green-rgb: {{ green_rgb }};
  --color-cyan-rgb: {{ cyan_rgb }};
  --color-blue-rgb: {{ blue_rgb }};
  --color-purple-rgb: {{ magenta_rgb }};
  --color-pink-rgb: {{ bright_magenta_rgb }};
  --mono-rgb-0: {{ darker_background_rgb }};
  --mono-rgb-100: {{ bright_foreground_rgb }};

  /* Accent: replaces the vault's accentColor setting */
  --color-accent: {{ accent }};
  --color-accent-1: {{ mix accent bright_foreground 15% }};
  --color-accent-2: {{ mix accent bright_foreground 30% }};
  --text-accent: var(--color-accent);
  --text-accent-hover: var(--color-accent-1);
  --interactive-accent: var(--color-accent);
  --interactive-accent-hover: var(--color-accent-1);
  --text-on-accent: {{ background }};

  /* Surfaces */
  --background-primary: {{ background }};
  --background-primary-alt: {{ background }};
  --background-secondary: {{ background }};
  --background-secondary-alt: {{ background }};
  --background-modifier-border: {{ muted }};
  --background-modifier-form-field: var(--color-base-10);
  --background-modifier-cover: rgba({{ darker_background_rgb }}, 0.6);
  --background-modifier-box-shadow: rgba({{ darker_background_rgb }}, 0.3);
  --interactive-normal: var(--color-base-25);
  --interactive-hover: var(--color-base-35);

  /* Text */
  --text-normal: {{ foreground }};
  --text-muted: var(--color-base-70);
  --text-faint: var(--color-base-50);
  --text-selection: {{ selection }};
  --text-highlight-bg: rgba({{ yellow_rgb }}, 0.35);
  --text-error: {{ red }};
  --text-error-hover: {{ bright_red }};
  --text-success: {{ green }};
  --text-warning: {{ orange }};

  /* Headings */
  --h1-color: {{ red }};
  --h2-color: {{ green }};
  --h3-color: {{ yellow }};
  --h4-color: {{ blue }};
  --h5-color: {{ magenta }};
  --h6-color: {{ magenta }};

  /* Links */
  --link-color: {{ blue }};
  --link-color-hover: {{ bright_blue }};
  --link-external-color: {{ blue }};
  --link-external-color-hover: {{ bright_blue }};
  --link-unresolved-color: {{ blue }};

  /* Code: used by both the editor and Reading view */
  --code-background: var(--color-base-10);
  --code-normal: {{ cyan }};
  --code-comment: {{ mix background foreground 70% }};
  --code-keyword: {{ red }};
  --code-string: {{ green }};
  --code-value: {{ yellow }};
  --code-operator: {{ blue }};
  --code-function: {{ blue }};
  --code-property: {{ cyan }};
  --code-tag: {{ red }};
  --code-important: {{ orange }};
  --code-punctuation: var(--text-muted);

  /* Tags */
  --tag-color: {{ cyan }};
  --tag-color-hover: {{ cyan }};
  --tag-background: {{ mix background cyan 10% }};
  --tag-background-hover: {{ mix background cyan 20% }};

  /* Active items */
  --nav-item-color-active: var(--interactive-accent);
  --tab-text-color-focused-active-current: var(--interactive-accent);

  /* Graph */
  --graph-line: {{ muted }};
  --graph-node: {{ accent }};
  --graph-node-focused: {{ blue }};
  --graph-node-tag: {{ cyan }};
  --graph-node-attachment: {{ green }};
}

/* Search results */
.search-result-file-title {
  color: var(--interactive-accent);
}
