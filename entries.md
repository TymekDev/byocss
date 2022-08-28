---
title: "Entries (byocss)"
---

There are two page kinds where entries section is displayed in [byocss](https://sr.ht/~tymek/byocss): home and section.
Home page is the landing page of your site.
Section page is any other page that contains subpages, i.e. a subdirectory in your `content/` directory.

# Customization
[By default][0], entries contain a list of posts with metadata containing post's title, date, summary, and tags.
If you want to add additional information, then you can add `entry_extension.html` partial to your site.
In other words, contents of `layouts/partial/entry_extension.html` file will be appended to every entry.
There is also an option to override entire entries section by defining `entries` block as show below.

[0]: https://git.sr.ht/~tymek/byocss/tree/197ccf83270b6dfeaa83df764ff0f532c2737b16/item/layouts/_default/baseof.html#L57-79

```
{{- define "entries" }}
  {{/* Your implementation goes here */}}
{{- end }}
```

# Selectors for Styling
- `#entries` - entire `<section>` tag
- `#entries ol` - posts list
- `#entries ol > li` - posts list's elements (note: `#entries ol li` would also match tag list's elements)
- `#entries article` - post metadata
- `#entries article > a` - post link (note: `#entries article a` would also match tag links)
- `#entries article a h3` - post title
- `#entries article a time` - post date
- `#entries article a p` - post summary
- `#entries article ul` - post tags
