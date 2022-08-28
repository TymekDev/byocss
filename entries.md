---
title: "Entries (byocss)"
---

There are two page kinds where entries section is displayed in [byocss](https://sr.ht/~tymek/byocss): home and section.
Home page is the landing page of your site.
Section page is any other page that contains subpages, i.e. a subdirectory in your `content/` directory.

# Customization
[By default][0], entries contain a list of posts with metadata containing post's title, date, summary, and tags.
Entries section can be overridden by defining `entries` block as show below.
However, currently byocss does not support fine-tuned customization.
Therefore, if you want to make any adjustments, then the entire section has to be redefined.

[0]: https://git.sr.ht/~tymek/byocss/tree/f4ee6132f1b87420211bbea1efd5fbde1f4606e7/item/layouts/_default/baseof.html#L31-50

```
{{- define "entries" }}
  {{/* Your implementation goes here */}}
{{- end }}
```

# Selectors for Styling
- `#entries` - entire `<section>` tag
- `#entries ol` - posts list
- `#entries ol > li` - posts list's elements (note: `#entries ol li` would also match post tags)
- `#entries article` - post metadata
- `#entries article > a` - post link (note: `#entries article > a` would also match post tags links)
- `#entries article a h3` - post title
- `#entries article a time` - post date
- `#entries article a p` - post summary
- `#entries article ul` - post tags
