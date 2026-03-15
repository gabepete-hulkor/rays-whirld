# Ray's Whirld Wiki — Site Files

## Folder Structure

```
rays-whirld/
├── index.html          ← Main shell (header, nav, footer). Edit nav links here.
├── css/
│   └── style.css       ← All styles. Edit colors/fonts/layout here.
├── js/
│   └── main.js         ← All JavaScript (spell data, nav logic, render functions).
└── pages/
    ├── _template.html  ← COPY THIS to add a new page (see instructions inside)
    ├── home.html
    ├── intro.html
    ├── classes.html
    ├── combat.html
    ├── lor.html
    ├── spells.html
    ├── species.html
    ├── equipment.html
    ├── lore.html
    ├── skills.html
    ├── mutations.html
    ├── charsheet.html
    ├── spellbook.html
    └── tables.html
```

## Apache Hosting

Upload the entire `rays-whirld/` folder to your web server.
No PHP or server-side processing required — pure HTML/CSS/JS.

The site uses `fetch()` to load page content dynamically, so it must be
served from a web server (not opened as a local file). Apache works perfectly.

### Optional: Add to your Apache config or .htaccess
```apache
# Optional: clean URLs (not required, site works without this)
DirectoryIndex index.html
```

## Adding a New Page

1. Copy `pages/_template.html` to `pages/yourpage.html`
2. Edit the content in your new file
3. Open `index.html` and add a nav link inside `<nav id="main-nav">`:
   ```html
   <a href="#" onclick="showPage('yourpage', this); return false;">🗡️ Your Page</a>
   ```
4. Upload and done.

## Editing Existing Pages

Each file in `pages/` is a standalone HTML fragment — just the content,
no `<html>`, `<head>`, or `<body>` tags needed. Edit freely.

## Changing Colors / Fonts

All design tokens are CSS variables at the top of `css/style.css`:
```css
:root {
  --gold: #c9a84c;
  --bg-deep: #0d0b08;
  /* ... etc */
}
```

## Notes

- The `character.html` page exists but was commented out in the original —
  it will load fine, but you may want to add it back to the nav in index.html.
- Spell data (SPELLS array) and mutation data (MUTATIONS array) live in `js/main.js`.
  Search for `const SPELLS = [` or `const MUTATIONS = [` to find and edit them.
- The Spell Book page (spellbook.html) uses tab switching — see switchTab() in main.js.
