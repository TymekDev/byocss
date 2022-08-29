---
title: Header (byocss)
---

Header is a part shared across all page types in [byocss](https://sr.ht/~tymek/byocss).
It is similar in form to the post metadata in [entries](entries.md) with the difference that the header does not contain a post summary.
Additionally, for pages containing entries (home and sections) or terms (taxonomies), header has the date hidden by default and contains "Skip to entries" or "Skip to terms" link.

# Configuration
If the date is not explicitly set for a given post with entries, then Hugo uses the date of the newest entry.
Personally, I don't find too much use in this functionality, therefore date is disabled by default for home and sections (it still appears in their entries!).
If you would like to make it appear, then you can enable it in your config file.

__`config.toml`__
```toml
[params]
showListDate = true
```

__`config.yaml`__
```yaml
params:
  showListDate: true
```

# Selectors for Styling
- `header` - the header itself
- `header > a` - "Skip to entries" link (note: `header a` would also match tag links)
- `header h1` - post title
- `header time` - post date
- `header ul` - post tags
