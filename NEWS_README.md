Example I used:
https://spaceship-one.vercel.app/posts/2026-02-01-how-to-publish-posts

# News in Astro (EXCALIBUR)

This project uses Astro Content Collections for the News section. It keeps posts in Markdown, validates frontmatter, and generates list/detail pages.

## Folder structure

- src/content/config.ts - Defines the news collection schema.
- src/content/news/ - Markdown news posts.
- src/pages/news/index.astro - News listing page.
- src/pages/news/[slug].astro - News detail page.

## Creating a news post

1. Add a new Markdown file in src/content/news/.
2. Use this frontmatter format:

```markdown
---
title: "Short, clear headline"
summary: "One or two sentences for the listing page."
date: 2026-02-11
image: "/images/banner5.webp"
imageAlt: "Describe the image"
tags: ["announcement", "research"]
draft: false
---

Your news content goes here.
```

Notes:
- date uses YYYY-MM-DD. Astro stores it as a Date object.
- image and imageAlt are optional. Images should live in public/.
- draft is optional. If true, it is hidden from the site.
- tags are optional.

## How pages are generated

- The listing page reads the collection with getCollection("news"), filters out draft posts, then sorts by date (newest first).
- The detail page uses getStaticPaths to build a page for each post.

## Navigation

The News link is in the main header navigation and the mobile menu.

## Common edits

- Update list copy: src/pages/news/index.astro
- Update post styling: src/pages/news/[slug].astro
- Change schema fields: src/content/config.ts

Note about slugs / filenames:

- The URL slug for a post is taken from the filename (without extension). To use clean slugs like `/news/research-plan`, name the file `research-plan.md` (not `2026-01-20-research-plan.md`). Keep the `date` frontmatter field for sorting and display.

## Optional next steps

- Add an RSS feed with @astrojs/rss.
- Add pagination for long lists using Astro paginate().
- Add an image field to the schema and display a hero image in posts.
