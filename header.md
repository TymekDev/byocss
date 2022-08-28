---
title: Header (byocss)
---

Header, along with main, is one of the two parts shared across all page types in [byocss](https://sr.ht/~tymek/byocss).
It is similar in form to post metadata in [entries](entries.md) with the difference that it does not contain post summary.
Additionally, for pages containing entries, i.e. home and sections, header contains "Skip to entries" link and the date in configurable.

# Configuration
If the date is not explicitly set for given post with entries, then Hugo picks date of the newest entry.
Personally, I don't find too much use in this functionality, therefore date is disabled by default for home and sections.
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
