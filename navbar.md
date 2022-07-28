---
title: "Navbar (byocss)"
---

[byocss](https://sr.ht/~tymek/byocss) by default provides a navbar that contains only the site title.
There are a few different approaches on how other elements can be included in the navbar.
Read on and pick one that suits you the best!

# Configuration
## `sectionPagesMenu`
The easiest way is to set `sectionPagesMenu` option.

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

<div class="alert alert-warning">Note: Hugo does pluralize the name. Therefore, `content/post` and `content/posts` yield the same menu entry.</div>

## `menu`
If you want more flexibility, then the navbar entries can be configured manually.
To do that you need to provide a name, an URL, and optionally a weight.

__`config.toml`__
```toml
[[menu.main]]
name = "Home"
url = "/"

[[menu.main]]
name = "Posts"
url = "/posts"
```

__`config.yaml`__
```yaml
menu.main:
  - name: "Home"
    url: "/"
  - name: "Posts"
    url: "/posts"
```

Name is what is going to be displayed in the navbar, and the URL is... well, the URL.
The weight can handle order of entries, it is 0 by default, and entries are sorted decreasingly by it.

## Mixing Both Approaches
It is possible to combine the two approaches described above.
For example, `menu` can be used to include `Home` entry in navbar populated with `sectionPagesMenu`.

<div class="alert alert-warning">
Note: when mixing the two approaches entries coming from `sectionPagesMenu` always come last.
Setting weight only works for manual entries.
</div>

# Styling
TODO
