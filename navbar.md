---
title: "Navbar (byocss)"
---

[byocss](https://sr.ht/~tymek/byocss) by default provides a navbar that contains only the site title.
There are a few different approaches on how other elements can be included in the navbar.
Read on and pick one that suits you the best!

# Configuration
## Using `sectionPagesMenu` Key
The easiest way is to set `sectionPagesMenu` key.

__`config.toml`__
```toml
sectionPagesMenu = "main"
```

__`config.yaml`__
```yaml
sectionPagesMenu: "main"
```

This way [Hugo](https://gohugo.io) deduces menu entries based on subdirectories of `content/`.
For example, if you had `content/post` and `content/tools`, then the entries would include `Posts` and `Tools`.

<div class="alert alert-warning">
<strong>Note:</strong> Hugo does pluralize the name. Therefore, <code>content/post</code> and <code>content/posts</code> yield the same menu entry.
</div>

## Using `menu` Key
If you want more flexibility, then the navbar entries can be configured manually.
To do that you need to provide a list of items containing a name, an URL, and optionally a weight.

__`config.toml`__
```toml
[[menu.main]]
name = "Home"
url = "/"

[[menu.main]]
name = "Posts"
url = "/posts/"
```

__`config.yaml`__
```yaml
menu.main:
  - name: "Home"
    url: "/"
  - name: "Posts"
    url: "/posts/"
```

Name is what is going to be displayed in the navbar, and the URL is... well, the URL.
The weight can handle order of entries, it has to be positive value.
Entries with weight provided are sorted in descending order while entries without weight are sorted alphabetically by name.

<div class="alert alert-warning">
<strong>Note:</strong> URLs should have a trailing slash. Otherwise, <code>active</code> CSS class won't be assigned.
</div>

## Combining Both Approaches
It is possible to combine the two approaches described above.
For example, `menu` can be used to include `Home` entry in navbar populated with `sectionPagesMenu`.

__`config.toml`__
```toml
sectionPagesMenu = "main"
[[menu.main]]
name = "Home"
url = "/"

[[menu.main]]
name = "Posts"
url = "/posts"
weight = 1
```

__`config.yaml`__
```yaml
sectionPagesMenu: "main"
menu.main:
  - name: "Home"
    url: "/"
  - name: "Posts"
    url: "/posts"
    weight: 1
```

<div class="alert alert-warning">
<strong>Note:</strong> when mixing the two approaches, entries coming from <code>sectionPagesMenu</code> always come last.
Setting weight only works for manual entries.
</div>

# Selectors for Styling
- `nav` - the navbar itself
- `nav ul` - list with links
- `nav li:first-child` - blog title list element
- `nav a` - links in the navbar
- `nav li:not(:first-child) a` - links in navbar excluding site title
- `nav .active` - currently opened page
